import 'dart:convert';
import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:googleapis_auth/auth_io.dart' as auth;
import 'package:http/http.dart' as http;
import 'package:kaala_mandi/data/fcm_server_key.dart';

class FCMService {
  late FirebaseMessaging messaging;

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  // Android notification channel settings
  static const AndroidNotificationChannel channel = AndroidNotificationChannel(
    'notify_id', // Channel ID
    'notify', // Channel name
    description:
        'This channel will be used for important notifications', // Description of the channel
    importance: Importance.high, // Set importance to high for pop-up behavior
    //
    enableLights: true,
    enableVibration: true,
    playSound: true,
  );

  FCMService() {
    messaging = FirebaseMessaging.instance;
  }

  // Initialize FCM and local notifications
  Future<void> initialize() async {
    // Request notification permission (iOS only)
    await requestPermission();
    await getToken();

    // Initialize local notification settings for Android
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

    // Handle foreground messages
    firebaseForegroundMessageHandler();

    // Handle background messages
    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

    // Handle notifications when the app is launched from a terminated state
    FirebaseMessaging.instance
        .getInitialMessage()
        .then((RemoteMessage? message) {
      if (message != null) {
        handleMessage(message);
      }
    });
  }

  // Request permission for notifications (iOS)
  Future<void> requestPermission() async {
    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
    log('User granted permission: ${settings.authorizationStatus}');
  }

  // Handle background messages (static method)
  static Future<void> firebaseMessagingBackgroundHandler(
      RemoteMessage message) async {
    await Firebase.initializeApp();
    log("Handling a background message: ${message.messageId}");
  }

  // Handle message click events and other app states (background or terminated)
  void handleMessage(RemoteMessage message) {
    // Access the notification object and its Android-specific data
    RemoteNotification? notification = message.notification;
    // AndroidNotification? android = message.notification?.android;
    log("Notification: $notification");
    log("Message data: ${message.data}");

    // Navigate to a specific screen with the message data
    // Get.toNamed(RouterHelperService.login, arguments: [
    //   {"message": message}
    // ]);

    // Get.to(() => Login());
  }

  // Handle foreground notifications (when app is running)
  Future<void> firebaseForegroundMessageHandler() async {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;

      // If notification contains a visual message
      if (notification != null && android != null) {
        flutterLocalNotificationsPlugin.show(
          notification.hashCode,
          notification.title,
          notification.body,
          NotificationDetails(
            android: AndroidNotificationDetails(
              channel.id,
              channel.name,
              channelDescription: channel.description,
              icon: 'ic_launcher', // Set your app icon for the notification
              visibility: NotificationVisibility.public,
              priority: Priority.max,
              importance: Importance.max,
              enableLights: true,
              enableVibration: true,
              playSound: true,
              fullScreenIntent: true,
            ),
          ),
        );
      } else {
        // Handle data-only message
        log('Received a data-only message: ${message.data}');
      }
    });
  }

  // Fetch and log the current FCM token (for debugging or sending to server)
  Future<void> getToken() async {
    try {
      String? token = await messaging.getToken();
      log("Firebase Messaging Token: $token");
      FirebaseMessaging.instance.onTokenRefresh.listen((newToken) {
        log("Refreshed Token: $newToken");
        // Update your server with the new token if necessary
      });
    } catch (e, stackTrace) {
      log("error : $e");
      log("stackTrace : $stackTrace");
    }
  }

  // getting server key
  Future<String> getServerKey() async {
    final serviceAccountJson = fcmServerKey;

    List<String> scopes = [
      'https://www.googleapis.com/auth/userinfo.email',
      'https://www.googleapis.com/auth/firebase.database',
      'https://www.googleapis.com/auth/firebase.messaging',
    ];
    http.Client client = await auth.clientViaServiceAccount(
      auth.ServiceAccountCredentials.fromJson(serviceAccountJson),
      scopes,
    );

    auth.AccessCredentials credentials =
        await auth.obtainAccessCredentialsViaServiceAccount(
            auth.ServiceAccountCredentials.fromJson(serviceAccountJson),
            scopes,
            client);

    client.close();

    return credentials.accessToken.data;
  }

  // Send a notification to a specific FCM token
  Future<void> sendNotification({
    required String to,
    required String title,
    required String body,
    Map<String, dynamic>? data,
  }) async {
    final serverKey = await getServerKey(); // Replace with your FCM server key

    log("Server key : $serverKey");
    const url =
        "https://fcm.googleapis.com/v1/projects/zeitnah-92896/messages:send";

    final Map<String, dynamic> notification = {
      'message': {
        'token': to,
        'notification': {'title': title, 'body': body},
        'data': {}
      }
    };

    log('hello there');
    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer $serverKey",
        },
        body: jsonEncode(notification),
      );

      if (response.statusCode == 200) {
        log("Notification sent successfully");
      } else {
        log("Failed to send notification");
        log("Response: ${response.body}");
      }
    } catch (e, stackTrace) {
      log("Error sending notification: $e");
      log("stackTrace : $stackTrace");
    }
  }
}
