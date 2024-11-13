import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaala_mandi/view_models/home_vm/home_vm.dart';

import '../../../res/app_colors.dart';
import '../../../res/widgets/text_widgets.dart';
import 'widgets/browse_breeds.dart';
import 'widgets/open_offers.dart';

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
      backgroundColor: AppColors.lightBackgroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.lightPrimaryColor,
        title: HeadingMediumText(
          text: "Browse Breeds",
          textColor: Colors.white,
        ),
      ),
      body: SafeArea(
        child: LayoutBuilder(
            builder: (context, constraints) => SingleChildScrollView(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: constraints.maxHeight * 0.04,
                      ),
                      BrowseBreeds(
                        constraints: constraints,
                        viewModel: viewModel,
                      ),
                      SizedBox(
                        height: constraints.maxHeight * 0.04,
                      ),
                      HeadingMediumText(
                        text: "Offers",
                        textColor: AppColors.lightPrimaryColor,
                      ),
                      SizedBox(
                        height: constraints.maxHeight * 0.04,
                      ),
                      //   Open Offers
                      OpenOffers(
                        viewModel: viewModel,
                        constraints: constraints,
                      )
                    ],
                  ),
                ))),
      ),
    );
  }
}
