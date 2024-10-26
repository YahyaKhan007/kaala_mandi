import 'dart:async';

import 'package:get/get.dart';

import '../../services/routes_service/routes_name.dart';

class SplashViewModel extends GetxController {
  final splashLoading = false.obs;

  Future<void> splashInit() async {
    await Future.delayed(const Duration(seconds: 3));
    splashLoading.value = true;

    if (splashLoading.value == true) {
      Get.toNamed(RouteName.onBoardingScreen);
    }
  }
}
