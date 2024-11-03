import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaala_mandi/res/app_colors.dart';
import 'package:kaala_mandi/res/widgets/text_widgets.dart';

class CategoryItemView extends StatelessWidget {
  final String category;
  final String image;
  const CategoryItemView(
      {super.key, required this.category, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
        backgroundColor: AppColors.lightPrimaryColor,
        title: Row(
          children: [
            HeadingSmallText(
              text: "${category}s",
              textColor: Colors.white,
            ),
            SizedBox(
              width: 8,
            ),
            SizedBox(
              height: 40,
              child: Image.asset(
                image,
                color: Colors.white,
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}
