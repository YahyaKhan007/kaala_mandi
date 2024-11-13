import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home_screen_vm.dart';

class NavBarItemWidget extends StatelessWidget {
  final BoxConstraints constraints;
  final HomeScreenViewModel viewModel;
  final BuildContext context;
  final String label;
  final IconData icon;
  final int index;
  final VoidCallback onTap;
  const NavBarItemWidget(
      {super.key,
      required this.constraints,
      required this.context,
      required this.label,
      required this.icon,
      required this.index,
      required this.onTap,
      required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Obx(
        () => SizedBox(
            width: constraints.maxWidth * 0.15,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    icon,
                    color: viewModel.currentScreenIndex == index
                        ? Colors.white
                        : Colors.black,
                  ),
                  FittedBox(
                    child: Text(
                      label,
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: viewModel.currentScreenIndex.value == index
                              ? Colors.white
                              : Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
    ;
  }
}
