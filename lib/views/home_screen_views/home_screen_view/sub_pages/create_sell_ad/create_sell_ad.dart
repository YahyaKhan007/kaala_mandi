import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaala_mandi/res/app_colors.dart';
import 'package:kaala_mandi/views/home_screen_views/home_screen_view/sub_pages/widgets/options.dart';

import '../../../../../view_models/create_sell_ad/create_sell_ad_vm.dart';
import '../widgets/sell_ad_topbar.dart';

class CreateSellAdView extends StatefulWidget {
  final String category;
  const CreateSellAdView({required this.category}) : super();

  @override
  State<CreateSellAdView> createState() => _CreateSellAdViewState();
}

class _CreateSellAdViewState extends State<CreateSellAdView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GetBuilder(
          init: Get.put(CreateSellAdViewModel()),
          initState: (_) {
            // Call a function in ViewModel and pass a value
            Get.find<CreateSellAdViewModel>()
                .initializedSelectedCategory(widget.category);
          },
          builder: (viewModel) {
            return LayoutBuilder(
              builder: (context, constraints) {
                return Stack(
                  children: [
                    sellAdTopBar(constraints: constraints),
                    Transform.translate(
                      offset: Offset(0, constraints.maxHeight * 0.17),
                      child: Container(
                        height: constraints.maxHeight * 0.8,
                        width: constraints.maxWidth,
                        decoration: BoxDecoration(
                          color: AppColors.lightWhite,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(24),
                            topLeft: Radius.circular(24),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 16,
                              ),
                              // Option Widget for category Selection
                              sellDataOption(
                                  viewModel: viewModel, context: context),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
