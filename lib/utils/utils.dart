import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:kaala_mandi/res/app_colors.dart';

class Utils {
  static showToastBottom({required String message}) {
    Fluttertoast.showToast(
        msg: message,
        backgroundColor: AppColors.lightPrimaryColor,
        gravity: ToastGravity.BOTTOM);
  }

  static showToastCenter({required String message}) {
    Fluttertoast.showToast(
        msg: message,
        backgroundColor: AppColors.lightPrimaryColor,
        gravity: ToastGravity.BOTTOM);
  }

  static showToastTop({required String message}) {
    Fluttertoast.showToast(
        msg: message,
        backgroundColor: AppColors.lightPrimaryColor,
        gravity: ToastGravity.BOTTOM);
  }

  static snackBar({required String title, required String message}) {
    Get.snackbar(title, message, backgroundColor: AppColors.lightPrimaryColor);
  }

  static String formatTime(DateTime time) {
    return '';
  }

  static String formatDate(DateTime date) {
    return '';
  }
}
