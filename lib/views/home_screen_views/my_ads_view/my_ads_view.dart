import 'package:flutter/material.dart';
import 'package:kaala_mandi/res/app_colors.dart';
import 'package:kaala_mandi/res/widgets/text_widgets.dart';

class MyAdsView extends StatelessWidget {
  const MyAdsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBackgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: HeadingMediumText(
            text: "You have not uploaded any Offers yet",
            textColor: AppColors.lightIconGreyColor,
          )),
          Center(
              child: BodyLargeText(
            text: "Click On the + icon to create one",
            textColor: AppColors.lightIconGreyColor,
          ))
        ],
      ),
    );
  }
}
