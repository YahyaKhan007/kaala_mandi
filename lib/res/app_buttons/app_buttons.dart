import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaala_mandi/res/loading_widgets/loading_three_dots.dart';

class AppButtons {
  static Widget textButton(
      {required BuildContext context,
      required String text,
      required VoidCallback onPressed}) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .color!
                  .withOpacity(0.64),
            ),
      ),
    );
  }
//   Full Size Round Button

  static Widget fullSizeButton(
      {required VoidCallback onPressed,
      required String buttonText,
      required Color textColor,
      required RxBool isLoading,
      required double textSize,
      required Color buttonColor}) {
    return Obx(
      () => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 16),
              elevation: 0,
              backgroundColor: buttonColor,
              foregroundColor: textColor,
              minimumSize: const Size(double.infinity, 48),
              shape:
                  const StadiumBorder(side: BorderSide(color: Colors.white54)),
            ),
            child: isLoading.value
                ? AppLoading.loadingThreeDot(color: textColor, size: 24)
                : Text(
                    buttonText,
                    style: TextStyle(fontSize: textSize),
                  )),
      ),
    );
  }
}
