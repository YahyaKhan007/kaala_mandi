import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaala_mandi/view_models/home_vm/home_vm.dart';

import '../../../../res/app_colors.dart';
import '../../../../res/widgets/text_widgets.dart';
import '../../../../services/routes_service/routes_name.dart';

class BrowseBreeds extends StatelessWidget {
  final BoxConstraints constraints;
  final HomeViewModel viewModel;
  const BrowseBreeds(
      {super.key, required this.constraints, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: constraints.maxHeight * 0.3,
      width: constraints.maxWidth,
      decoration: BoxDecoration(),
      child: GridView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: viewModel.categoryNames.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 100,
            crossAxisCount: 2,
            childAspectRatio: 20,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
          ),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Get.toNamed(AppPages.categoryItemView, arguments: {
                  'category': viewModel.categoryNames[index],
                  'categoryIndex': index,
                });
              },
              child: Container(
                height: constraints.maxHeight * 0.25,
                width: constraints.maxWidth,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: AppColors.lightGreyColor)),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Center(
                      child: Image.asset(viewModel.categoryIcons[index]),
                    )),
                    BodyMediumText(text: viewModel.categoryNames[index])
                  ],
                ),
              ),
            );
          }),
    );
  }
}
