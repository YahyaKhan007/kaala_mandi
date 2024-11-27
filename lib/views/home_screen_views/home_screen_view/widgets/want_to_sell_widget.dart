import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaala_mandi/view_models/home_screen_vm/home_screen_vm.dart';

import '../../../../data/app_images.dart';
import '../../../../res/app_colors.dart';
import '../../../../res/widgets/text_widgets.dart';
import 'sell_type_widget.dart';

wantToSellDialog(
    BuildContext context, HomeScreenViewModel homeScreenViewModel) {
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
                              onTap: () {
                                homeScreenViewModel
                                    .gotoCreateSellAdView('Buffalo');
                              },
                              text: 'Buffalo',
                              image: AppImages.buffaloIcon,
                              constraints: constraints,
                            ),
                            SizedBox(
                              width: constraints.maxWidth * 0.06,
                            ),
                            SellTypeWidget(
                              onTap: () {
                                homeScreenViewModel.gotoCreateSellAdView('Cow');
                              },
                              text: 'Cow',
                              image: AppImages.cowIcon,
                              constraints: constraints,
                            ),
                            SizedBox(
                              width: constraints.maxWidth * 0.06,
                            ),
                            SellTypeWidget(
                              onTap: () {
                                homeScreenViewModel.gotoCreateSellAdView('');
                              },
                              text: 'Others',
                              image: AppImages.goatIcon,
                              constraints: constraints,
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white38,
                          ),
                          height: constraints.maxHeight * 0.1,
                          width: constraints.maxWidth * 0.14,
                          child: Center(
                            child: Icon(
                              Icons.close,
                              color: AppColors.lightWhite,
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
