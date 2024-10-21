import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaala_mandi/res/getx_localization/languages.dart';
import 'package:kaala_mandi/views/splash_screen/splash_screen.dart';

import 'data/routes_service/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Kaala Mandi',
      translations: Languages(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      getPages: AppRoutes.appRoutes(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}
