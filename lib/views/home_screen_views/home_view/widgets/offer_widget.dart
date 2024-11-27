import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaala_mandi/view_models/home_vm/home_vm.dart';

import '../../../../res/app_colors.dart';
import '../../../../res/widgets/text_widgets.dart';

class OfferWidget extends StatelessWidget {
  final HomeViewModel viewModel;
  final BoxConstraints constraints;
  final int index;
  const OfferWidget({
    super.key,
    required this.constraints,
    required this.index,
    required this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.lightGreyColor)),
      child: FittedBox(
        child: Row(
          children: [
            profilePic(index: index),
            dataAboutOffer(context),
          ],
        ),
      ),
    );
  }

  Widget dataAboutOffer(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String breedName = 'Local Pakistani';
    String price = '2,70,000';
    double age = 1.8;
    String location = 'Peshawar';
    int away = 47;
    return SizedBox(
      height: constraints.maxHeight * 0.25,
      width: constraints.maxWidth / 1.8,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: FittedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  HeadingSmallText(
                    text: breedName,
                  ),
                  SizedBox(
                    width: constraints.maxWidth / 5.5,
                  ),
                  Icon(CupertinoIcons.heart)
                ],
              ),
              // For showing Price
              HeadingLargeText(text: price),
              //   For showing more data
              SizedBox(
                height: constraints.maxHeight * 0.01,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FittedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BodyMediumText(text: "$age years old"),
                        SizedBox(
                          width: constraints.maxWidth * 0.1,
                        ),
                        BodyMediumText(text: "From $location "),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.005,
                  ),
                  BodyMediumText(text: "$away km away"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget profilePic({required int index}) {
    return Container(
      height: constraints.maxHeight * 0.25,
      width: constraints.maxWidth * 0.35,
      decoration: BoxDecoration(
        color: AppColors.lightGreyColor,
        border: Border.all(color: AppColors.lightBorderColor),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Image.asset(viewModel.categoryIcons[index]),
      ),
    );
  }
}
