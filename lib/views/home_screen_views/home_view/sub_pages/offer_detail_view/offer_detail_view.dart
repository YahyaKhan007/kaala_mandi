import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaala_mandi/res/app_colors.dart';
import 'package:kaala_mandi/res/widgets/text_widgets.dart';

import 'contact_offer_creator.dart';
import 'widgets/app_bar_actions_widgets.dart';
import 'widgets/top_image_view.dart';

class OfferDetailView extends StatefulWidget {
  final String imagePath;
  const OfferDetailView({super.key, required this.imagePath});

  @override
  State<OfferDetailView> createState() => _OfferDetailViewState();
}

class _OfferDetailViewState extends State<OfferDetailView> {
  String breedName = 'Local Pakistani';
  String price = '2,70,000';
  double age = 1.8;
  String location = 'Peshawar';
  int away = 47;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: true,
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            actions: [
              shareOfferButton(onTap: () {}),
              favouriteOfferButton(onTap: () {}),
            ],
            backgroundColor: Colors.transparent,
            leading: InkWell(
              onTap: () {
                Get.back();
              },
              child: Icon(Icons.arrow_back_ios_new),
            ),
          ),
          backgroundColor: AppColors.lightBackgroundColor,
          body: Hero(
            transitionOnUserGestures: true,
            tag: 'offerDetails0',
            child: LayoutBuilder(
              builder: (context, constraints) => SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // TOP IMAGE VIEW
                    TopImageView(
                      constraints: constraints,
                      imagePath: widget.imagePath,
                    ),
                    // DETAIL DATA ABOUT OFFER
                    SizedBox(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            HeadingSmallText(text: breedName),
                            HeadingLargeText(text: "$price Rs"),
                            BodyLargeText(
                              text: location,
                            )
                          ],
                        ),
                      ),
                    ),

                    moreData(label: "Age", data: "$age Years Old"),
                    moreData(label: "Away", data: "$away kilometers away"),
                  ],
                ),
              ),
            ),
          ),
          bottomNavigationBar: ContactOfferCreator()),
    );
  }

  Widget moreData({required String label, required String data}) {
    return Container(
      margin: EdgeInsets.only(top: 16, right: 16, left: 16),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppColors.lightGreyColor),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HeadingSmallText(
              text: label,
              textColor: AppColors.lightIconGreyColor,
            ),
            HeadingSmallText(
              text: data,
              textColor: AppColors.lightIconGreyColor,
            ),
          ],
        ),
      ),
    );
  }
}
