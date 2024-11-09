import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:kaala_mandi/res/loading_widgets/loading_three_dots.dart';
import 'package:kaala_mandi/view_models/splash_vm/splash_vm.dart';

import '../../data/app_data.dart';
import '../../res/app_colors.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  final viewModel = Get.put(SplashViewModel());

  @override
  void initState() {
    viewModel.splashInit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBackgroundColor,
      body: SafeArea(child: LayoutBuilder(builder: (contetxt, constraints) {
        return Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // const Spacer(flex: 1),
                SizedBox(
                  height: constraints.maxHeight * 0.1,
                ),
                SizedBox(
                  width: constraints.maxWidth * 0.8,
                  height: constraints.maxHeight * 0.45,
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: SvgPicture.string(
                      AppData.paymentProcessIllistration,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
                ErrorInfo(
                  title: "Hello and Welcome",
                  description:
                      "We're setting things up for you. This will only take a moment.",
                  button: Transform.scale(
                    scale: 1,
                    child: AppLoading.loadingThreeDot(
                        color: Colors.black,
                        size: constraints.maxHeight * 0.05),
                  ),
                  press: () {},
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.1,
                ),
              ],
            ),
          ),
        );
      })),
    );
  }
}

class ErrorInfo extends StatelessWidget {
  const ErrorInfo({
    super.key,
    required this.title,
    required this.description,
    this.button,
    this.btnText,
    required this.press,
  });

  final String title;
  final String description;
  final Widget? button;
  final String? btnText;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 400),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              description,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16 * 2.5),
            button ??
                ElevatedButton(
                  onPressed: press,
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 48),
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)))),
                  child: Text(btnText ?? "Retry".toUpperCase()),
                ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
