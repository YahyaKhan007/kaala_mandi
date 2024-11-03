import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:kaala_mandi/services/routes_service/routes_name.dart';

class LoginViewModel extends GetxController {
  late TextEditingController phoneNumberController;
  RxBool googleLoading = false.obs;
  RxBool phoneSignIn = false.obs;

  Future<void> onGoogleLogin() async {
    googleLoading.value = true;
    await Future.delayed(const Duration(seconds: 3));
    googleLoading.value = false;
  }

  Future<void> onPhoneSignIn() async {
    phoneSignIn.value = true;
    await Future.delayed(const Duration(seconds: 3));

    phoneSignIn.value = false;
  }

  // continue with phone number
  Future<void> continueWithPhoneNumber() async {
    Get.toNamed(AppPages.otpScreen,
        arguments: {'phoneNumber': phoneNumberController.text});
  }

  @override
  void onClose() {
    // TODO: implement onClose
    phoneNumberController.dispose();
    super.onClose();
  }

  @override
  void onInit() {
    // TODO: implement onInit

    print("login controller init called");
    phoneNumberController = TextEditingController();
    super.onInit();
  }
}
