import 'package:flutter/material.dart';
import 'package:kaala_mandi/res/app_colors.dart';
import 'package:kaala_mandi/res/widgets/text_widgets.dart';

class MyAdsView extends StatelessWidget {
  const MyAdsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBackgroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.lightPrimaryColor,
        title: HeadingMediumText(
          text: "My Ads",
          textColor: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: BodyMediumText(
              text: "You have not uploaded any Offers yet",
              textColor: AppColors.lightIconGreyColor,
            )),
            Center(
                child: BodySmallText(
              text: "Click On the + icon to create one",
              textColor: AppColors.lightIconGreyColor,
            ))
          ],
        ),
      ),
    );
  }
}
