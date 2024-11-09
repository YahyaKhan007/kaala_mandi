import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaala_mandi/views/login/widgets/terms_conditions_widget.dart';

import '../../res/app_colors.dart';
import '../../view_models/login_vm/login_vm.dart';
import 'widgets/continue_with_buttons.dart';

class LoginView extends StatefulWidget {
  LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();

  late LoginViewModel viewModel;

  @override
  void initState() {
    // TODO: implement initState
    viewModel = Get.put(LoginViewModel());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.lightBackgroundColor,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) => SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: constraints.maxHeight * 0.04,
                ),
                Center(
                  child: Text(
                    "Welcome to kaala Mandi",
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: Colors.grey.shade800,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.04,
                ),
                SizedBox(
                    height: constraints.maxHeight * 0.15,
                    child: Center(
                        child: Image.asset('assets/icons/2_persons.png'))),
                Center(
                  child: Text(
                    "Safely Connect with Buyers",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Center(
                    child: Text(
                      "You can connect with thousands of Buyers and quick search",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.03,
                ),
                // Mobile Number
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "+92    ",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    color: Colors.grey.shade800,
                                    fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "|",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                    color: Colors.grey.shade600,
                                    fontWeight: FontWeight.w300),
                          ),
                          Expanded(
                            child: TextFormField(
                              controller: viewModel.phoneNumberController,
                              decoration: InputDecoration(
                                  hintText: 'Phone Number',
                                  hintStyle: TextStyle(color: Colors.grey),
                                  // filled: true,
                                  // fillColor: Colors.transparent.withOpacity(0.5),
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 16.0 * 1.5, vertical: 16.0),
                                  border: InputBorder.none),
                              keyboardType: TextInputType.number,
                              onSaved: (phone) {
                                // Save it
                              },
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 2,
                        width: constraints.maxWidth,
                        color: Colors.grey.shade300,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.04,
                ),
                // phone Button
                ContinueWithPhone(
                  onTap: () {
                    viewModel.continueWithPhoneNumber();
                  },
                  constraints: constraints,
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.04,
                ),

                ContinueWithButtonWidget(
                  onTap: () {},
                  constraints: constraints,
                  label: "Continue with Google",
                ),

                SizedBox(
                  height: constraints.maxHeight * 0.03,
                ),
                ContinueWithButtonWidget(
                  onTap: () {},
                  constraints: constraints,
                  label: "Continue with Email",
                  imagePath: "assets/icons/google.svg",
                ),

                SizedBox(
                  height: constraints.maxHeight * 0.03,
                ),

                TermsConditionsWidget(
                    context: context, constraints: constraints),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
