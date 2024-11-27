import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../res/app_colors.dart';
import '../../../../../res/widgets/text_widgets.dart';
import '../../../../../view_models/create_sell_ad/create_sell_ad_vm.dart';
import 'category_selection.dart';

Widget sellDataOption(
    {required CreateSellAdViewModel viewModel, required BuildContext context}) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      BodyMediumText(
        text: "Category Type",
        textColor: AppColors.lightPrimaryColor,
      ),
      SizedBox(
        height: 8,
      ),
      GestureDetector(
        onTap: () => showCarInfoPicker(
          context: context,
          categoryList: viewModel.categoryNames,
          viewModel: viewModel,
        ),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Text(
                  viewModel.selectedCategory.value == ""
                      ? "Select a category"
                      : viewModel.selectedCategory.value,
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
              Icon(Icons.arrow_forward_ios, size: 16),
            ],
          ),
        ),
      ),
    ],
  );
}
