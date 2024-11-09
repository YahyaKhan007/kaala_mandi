import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaala_mandi/res/app_colors.dart';
import 'package:kaala_mandi/res/widgets/text_widgets.dart';
import 'package:kaala_mandi/view_models/home_vm/home_vm.dart';
import 'package:kaala_mandi/views/home_screen_views/home_view/widgets/offer_widget.dart';

class CategoryItemView extends StatelessWidget {
  final String category;
  final int categoryIndex;
  CategoryItemView(
      {super.key, required this.category, required this.categoryIndex});

  final viewModel = Get.find<HomeViewModel>();

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
                viewModel.categoryIcons[categoryIndex],
                color: Colors.white,
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        return ListView.builder(
            itemCount: viewModel.categoryIcons.length,
            itemBuilder: (context, index) {
              return InkWell(
                  onTap: () {
                    viewModel.gotoOfferDetails(
                        viewModel.categoryIcons[categoryIndex]);
                  },
                  child: Hero(
                    tag: 'offerDetails$index',
                    child: OfferWidget(
                        constraints: constraints,
                        index: categoryIndex,
                        viewModel: viewModel),
                  ));
            });
      }),
    );
  }
}
