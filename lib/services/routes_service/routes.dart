import 'package:get/get.dart';
import 'package:kaala_mandi/views/on_boarding/on_boarding.dart';
import 'package:kaala_mandi/views/splash_screen/splash_screen.dart';

import 'routes_name.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(name: RouteName.splashScreen, page: () => SplashScreen()),
        GetPage(
            name: RouteName.onBoardingScreen, page: () => OnBoardingScreen()),
      ];
}
