import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaala_mandi/res/app_colors.dart';
import 'package:kaala_mandi/view_models/home_screen_viewModel/home_screen_vm.dart';

import '../../../view_models/home_screen_viewModel/widgets/navbar_item_widget.dart';

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({super.key});

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  late HomeScreenViewModel viewModel;
  @override
  void initState() {
    // TODO: implement initState
    viewModel = Get.put(HomeScreenViewModel());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
        floatingActionButton: InkWell(
          onTap: () {},
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                color: AppColors.lightPrimaryColor,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black, offset: Offset(0, 0), blurRadius: 4)
                ]),
            child: Center(
              child: Icon(
                Icons.add,
                size: 32,
                color: Colors.white,
              ),
            ),
          ),
        ),
        bottomNavigationBar: LayoutBuilder(
            builder: (context, constraints) => Container(
                height: 60,
                padding: EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: AppColors.lightPrimaryColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NavBarItemWidget(
                        viewModel: viewModel,
                        constraints: constraints,
                        icon: Icons.home,
                        context: context,
                        label: "Home",
                        index: 0,
                        onTap: () {
                          viewModel.currentScreenIndex(0);
                        }),
                    NavBarItemWidget(
                        viewModel: viewModel,
                        icon: Icons.ads_click,
                        constraints: constraints,
                        context: context,
                        label: "My Ads",
                        index: 1,
                        onTap: () {
                          viewModel.currentScreenIndex(1);
                        }),
                    SizedBox(
                      width: constraints.maxWidth * 0.06,
                    ),
                    NavBarItemWidget(
                        viewModel: viewModel,
                        icon: Icons.chat,
                        constraints: constraints,
                        context: context,
                        label: "Chat",
                        index: 2,
                        onTap: () {
                          viewModel.currentScreenIndex(2);
                        }),
                    NavBarItemWidget(
                        viewModel: viewModel,
                        icon: Icons.read_more_outlined,
                        constraints: constraints,
                        context: context,
                        label: "More",
                        index: 3,
                        onTap: () {
                          viewModel.currentScreenIndex(3);
                        })
                  ],
                ))));
  }
}
