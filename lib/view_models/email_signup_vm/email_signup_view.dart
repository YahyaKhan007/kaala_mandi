import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../services/routes_service/routes_name.dart';

class EmailSignupViewModel extends GetxController {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;

  RxBool isLoading = false.obs;

  gotoLoginWithEmail() {
    Get.toNamed(
      AppPages.emailLoginView,
      // arguments: {'phoneNumber': phoneNumberController.text}
    );
  }

  gotoTermsAndPolicies() {}

  @override
  void onClose() {
    // TODO: implement onClose
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  @override
  void onInit() {
    // TODO: implement onInit

    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    super.onInit();
  }
}
