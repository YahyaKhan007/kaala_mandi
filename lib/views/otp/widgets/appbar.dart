import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../res/app_colors.dart';

class OtpAppBar extends StatelessWidget {
  const OtpAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.lightPrimaryColor,
      leading: InkWell(
        onTap: () {
          Get.back();
        },
        child: Icon(
          Icons.arrow_back_ios_new,
          size: 20,
          color: Colors.white,
        ),
      ),
      title: Text("Sign in",
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: Colors.white)),
    );
  }
}
