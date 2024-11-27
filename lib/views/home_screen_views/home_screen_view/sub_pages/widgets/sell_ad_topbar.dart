import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../res/app_colors.dart';
import '../../../../../res/widgets/text_widgets.dart';

Widget sellAdTopBar({required BoxConstraints constraints}) {
  return Container(
    height: constraints.maxHeight * 0.2,
    width: constraints.maxWidth,
    decoration: BoxDecoration(color: AppColors.lightPrimaryColor),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.arrow_back_ios_new,
                  color: AppColors.lightWhite,
                  size: 20,
                ),
              ),
              SizedBox(
                width: 56,
              ),
              BodyMediumText(
                text: "Tell us about your pet",
                textColor: AppColors.lightWhite,
              )
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4),
            child: HeadingMediumText(
              text: "Enter Pet Info",
              // fontWeight: FontWeight.w6,
              textColor: AppColors.lightWhite,
            ),
          )
        ],
      ),
    ),
  );
}
