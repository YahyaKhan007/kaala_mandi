import 'package:flutter/material.dart';

import '../../../../../../res/app_colors.dart';

Widget favouriteOfferButton({
  required VoidCallback onTap,
}) {
  return IconButton(
      onPressed: onTap,
      icon: Icon(
        Icons.favorite,
        color: Colors.red,
      ));
}

Widget shareOfferButton({
  required VoidCallback onTap,
}) {
  return IconButton(
      onPressed: onTap,
      icon: Icon(
        Icons.share,
        color: AppColors.lightPrimaryColor,
      ));
}
