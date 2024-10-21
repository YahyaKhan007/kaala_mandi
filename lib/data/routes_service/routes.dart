import 'package:get/get.dart';
import 'package:kaala_mandi/data/routes_service/routes_name.dart';
import 'package:kaala_mandi/views/splash_screen/splash_screen.dart';

class AppRoutes {
  static appRoutes() =>
      [GetPage(name: RouteName.splashScreen, page: () => SplashScreen())];
}
