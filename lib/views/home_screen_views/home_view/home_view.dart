import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaala_mandi/res/app_colors.dart';
import 'package:kaala_mandi/res/widgets/text_widgets.dart';
import 'package:kaala_mandi/services/routes_service/routes_name.dart';
import 'package:kaala_mandi/view_models/home_vm/home_vm.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late HomeViewModel viewModel;
  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    viewModel = Get.put(HomeViewModel());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
            builder: (context, constraints) => SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: constraints.maxHeight * 0.04,
                          ),
                          HeadingMediumText(
                            text: "Browse Breeds",
                            textColor: AppColors.lightPrimaryColor,
                          ),
                          SizedBox(
                            height: constraints.maxHeight * 0.04,
                          ),

                          //   Grid View for Categories
                          Wrap(
                            spacing: 8,
                            runSpacing: 8,
                            alignment: WrapAlignment.start,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.start,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children: List.generate(
                              viewModel.categoryNames.length,
                              (index) => InkWell(
                                // TODO: from here it will be redirected towards specific category
                                onTap: () {
                                  Get.toNamed(AppPages.categoryItem,
                                      arguments: {
                                        'category':
                                            viewModel.categoryNames[index],
                                        'image': viewModel.categoryIcons[index],
                                      });
                                },
                                child: Container(
                                  padding: EdgeInsets.only(
                                      bottom: 8, right: 8, left: 8),
                                  height: constraints.maxHeight * 0.25,
                                  width: constraints.maxWidth * 0.28,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                      borderRadius: BorderRadius.circular(16)),
                                  child: Column(
                                    children: [
                                      Expanded(
                                          child: Center(
                                        child: Image.asset(
                                            viewModel.categoryIcons[index]),
                                      )),
                                      BodyMediumText(
                                          text: viewModel.categoryNames[index])
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )),
      ),
    );
  }
}
