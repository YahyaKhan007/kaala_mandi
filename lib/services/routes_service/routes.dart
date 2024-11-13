import 'package:get/get.dart';
import 'package:kaala_mandi/views/home_screen_views/home_screen_view/home_screen_view.dart';
import 'package:kaala_mandi/views/home_screen_views/home_view/sub_pages/category_items_view/category_item_view.dart';
import 'package:kaala_mandi/views/home_screen_views/home_view/sub_pages/offer_detail_view/offer_detail_view.dart';
import 'package:kaala_mandi/views/on_boarding/on_boarding_view.dart';
import 'package:kaala_mandi/views/otp/otp_view.dart';
import 'package:kaala_mandi/views/splash_screen/splash_view.dart';

import '../../views/auth_views/email_login_view/email_login_view.dart';
import '../../views/auth_views/email_signup_view/email_signup_view.dart';
import '../../views/auth_views/forgot_password_view/forgot_password_view.dart';
import '../../views/auth_views/phone_login/phone_llogin_view.dart';
import '../../views/home_screen_views/chat_view/sub_pages/message_view/message_view.dart';
import 'routes_name.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(name: AppPages.splashScreenView, page: () => SplashView()),
        GetPage(
            name: AppPages.onBoardingScreenView, page: () => OnBoardingView()),
        GetPage(name: AppPages.phoneLoginView, page: () => phoneLoginView()),
        GetPage(name: AppPages.emailLoginView, page: () => EmailLoginView()),
        GetPage(name: AppPages.emailSignupView, page: () => EmailSignupView()),
        GetPage(name: AppPages.homeScreenView, page: () => HomeScreenView()),
        GetPage(
            name: AppPages.messageScreenView, page: () => MessageScreenView()),
        GetPage(
            name: AppPages.offerDetailsView,
            page: () {
              final args = Get.arguments;
              return OfferDetailView(imagePath: args['imagePath']);
            }),
        GetPage(
            name: AppPages.forgotPasswordView,
            page: () => ForgotPasswordView()),
        // GetPage(name: AppPages.itemDetails, page: () => HomeScreenView()),
        GetPage(
            name: AppPages.categoryItemView,
            page: () {
              final args = Get.arguments;
              return CategoryItemView(
                category: args['category'],
                categoryIndex: args['categoryIndex'],
              );
            }),
        GetPage(
            name: AppPages.otpScreenView,
            page: () {
              final args = Get.arguments;
              return OTPView(number: args['phoneNumber']);
            })
      ];
}
