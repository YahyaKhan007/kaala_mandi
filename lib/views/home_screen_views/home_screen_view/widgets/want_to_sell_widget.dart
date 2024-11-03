import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../data/app_images.dart';
import '../../../../res/app_colors.dart';
import '../../../../res/widgets/text_widgets.dart';
import 'sell_type_widget.dart';

wantToSellDialog(BuildContext context) {
  return showCupertinoDialog(
      context: context,
      builder: (builder) => Dialog(
            alignment: Alignment.bottomCenter,
            insetPadding: EdgeInsets.zero,
            insetAnimationCurve: Curves.bounceInOut,
            child: LayoutBuilder(builder: (context, constraints) {
              return Container(
                height: constraints.maxHeight * 0.3,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.lightPrimaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                padding: EdgeInsets.symmetric(
                    vertical: constraints.maxHeight * 0.02),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      HeadingSmallText(
                        text: "What do you want to sell ?",
                        fontWeight: FontWeight.w500,
                        textColor: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SellTypeWidget(
                              text: 'Buffalo',
                              image: AppImages.buffalo,
                              constraints: constraints,
                            ),
                            SizedBox(
                              width: constraints.maxWidth * 0.06,
                            ),
                            SellTypeWidget(
                              text: 'Cow',
                              image: AppImages.cow,
                              constraints: constraints,
                            ),
                            SizedBox(
                              width: constraints.maxWidth * 0.06,
                            ),
                            SellTypeWidget(
                              text: 'Others',
                              image: AppImages.goatSheep,
                              constraints: constraints,
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: CircleAvatar(
                          radius: constraints.maxHeight * 0.045,
                          backgroundColor: Colors.white,
                          child: Center(
                            child: Icon(
                              Icons.close,
                              size: constraints.maxHeight * 0.045,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
          ));
}
