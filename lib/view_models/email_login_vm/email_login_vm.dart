import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../services/routes_service/routes_name.dart';

class EmailLoginViewModel extends GetxController {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  RxBool isLoading = false.obs;

  gotoPhoneLogin() {
    Get.toNamed(
      AppPages.phoneLoginView,
      // arguments: {'phoneNumber': phoneNumberController.text}
    );
  }

  gotoForgotPassword() {
    Get.toNamed(
      AppPages.forgotPasswordView,
      // arguments: {'phoneNumber': phoneNumberController.text}
    );
  }

  gotoSignupWithEmail() {
    Get.toNamed(
      AppPages.emailSignupView,
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
    super.onInit();
  }
}
