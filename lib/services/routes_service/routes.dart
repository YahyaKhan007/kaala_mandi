import 'package:get/get.dart';
import 'package:kaala_mandi/views/home_screen_views/home_screen_view/home_screen_view.dart';
import 'package:kaala_mandi/views/home_screen_views/home_view/sub_pages/category_items_view/category_item_view.dart';
import 'package:kaala_mandi/views/on_boarding/on_boarding_view.dart';
import 'package:kaala_mandi/views/otp/otp_view.dart';
import 'package:kaala_mandi/views/splash_screen/splash_view.dart';

import '../../views/auth_views/email_login_view/email_login_view.dart';
import '../../views/auth_views/email_signup_view/email_signup_view.dart';
import '../../views/auth_views/forgot_password_view/forgot_password_view.dart';
import '../../views/auth_views/phone_login/phone_llogin_view.dart';
import 'routes_name.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(name: AppPages.splashScreen, page: () => SplashView()),
        GetPage(name: AppPages.onBoardingScreen, page: () => OnBoardingView()),
        GetPage(name: AppPages.phoneLogin, page: () => phoneLoginView()),
        GetPage(name: AppPages.emailLogin, page: () => EmailLoginView()),
        GetPage(name: AppPages.emailSignup, page: () => EmailSignupView()),
        GetPage(name: AppPages.homeScreen, page: () => HomeScreenView()),
        GetPage(
            name: AppPages.forgotPassword, page: () => ForgotPasswordView()),
        // GetPage(name: AppPages.itemDetails, page: () => HomeScreenView()),
        GetPage(
            name: AppPages.categoryItem,
            page: () {
              final args = Get.arguments;
              return CategoryItemView(
                category: args['category'],
                categoryIndex: args['categoryIndex'],
              );
            }),
        GetPage(
            name: AppPages.otpScreen,
            page: () {
              final args = Get.arguments;
              return OTPView(number: args['phoneNumber']);
            })
      ];
}
