import 'package:flutter/material.dart';
import 'package:kaala_mandi/data/app_images.dart';

import '../../../../../res/app_colors.dart';
import '../../../../../res/widgets/text_widgets.dart';

class ContactOfferCreator extends StatelessWidget {
  const ContactOfferCreator({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return LayoutBuilder(builder: (context, constraints) {
      return SizedBox(
        height: size.height * 0.2,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 48,
                width: size.width,
                margin: EdgeInsets.symmetric(horizontal: 24),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppColors.lightPrimaryColor),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    BodyMediumText(
                      text: 'Call Seller',
                      textColor: Colors.white,
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: size.height * 0.02,
              ),
              //   Messages

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      height: 48,
                      margin: EdgeInsets.symmetric(horizontal: 24),
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.lightBorderColor),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.chat,
                            color: AppColors.lightIconGreyColor,
                            size: 24,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          BodyMediumText(text: "Chat")
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.05,
                  ),
                  Expanded(
                    child: Container(
                      height: 48,
                      margin: EdgeInsets.symmetric(horizontal: 24),
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.lightBorderColor),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                height: 32,
                                child: Image.asset(AppImages.whatsapp)),
                            SizedBox(
                              width: 8,
                            ),
                            BodyMediumText(text: "Whatsapp")
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    });
  }
}
