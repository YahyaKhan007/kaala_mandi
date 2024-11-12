import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaala_mandi/res/widgets/text_widgets.dart';
import 'package:kaala_mandi/views/auth_views/email_signup_view/widgets/textfield.dart';
import 'package:kaala_mandi/views/auth_views/phone_login/widgets/terms_conditions_widget.dart';

import '../../../../res/app_colors.dart';
import '../../../view_models/email_signup_vm/email_signup_view.dart';
import '../phone_login/widgets/continue_with_buttons.dart';

class EmailSignupView extends StatefulWidget {
  EmailSignupView({super.key});

  @override
  State<EmailSignupView> createState() => _LoginViewState();
}

class _LoginViewState extends State<EmailSignupView> {
  final _formKey = GlobalKey<FormState>();

  late EmailSignupViewModel viewModel;

  @override
  void initState() {
    // TODO: implement initState
    viewModel = Get.put(EmailSignupViewModel());
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
                    "Signup for kaala Mandi",
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
                SignupTextField(
                    icon: Icons.email_outlined,
                    viewModel: viewModel,
                    controller: viewModel.emailController,
                    label: "Email",
                    constraints: constraints),
                SizedBox(
                  height: constraints.maxHeight * 0.015,
                ),
                SignupTextField(
                    icon: Icons.remove_red_eye_outlined,
                    viewModel: viewModel,
                    controller: viewModel.passwordController,
                    label: "Password",
                    constraints: constraints),
                SizedBox(
                  height: constraints.maxHeight * 0.015,
                ),
                SignupTextField(
                    icon: Icons.remove_red_eye_outlined,
                    viewModel: viewModel,
                    controller: viewModel.confirmPasswordController,
                    label: "Confirm Password",
                    constraints: constraints),
                SizedBox(
                  height: constraints.maxHeight * 0.015,
                ),

                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: InkWell(
                      onTap: () {
                        viewModel.gotoLoginWithEmail();
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          BodySmallText(
                            text: "Already have an account? ",
                            fontWeight: FontWeight.normal,
                          ),
                          BodySmallText(
                            text: "Login",
                            // fontWeight: FontWeight.normal,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.02,
                ),
                // phone Button
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.lightPrimaryColor,
                        borderRadius: BorderRadius.circular(16)),
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                    child: BodyMediumText(
                      text: "Login",
                      textColor: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.04,
                ),

                SizedBox(
                  height: constraints.maxHeight * 0.03,
                ),
                ContinueWithButtonWidget(
                  onTap: () {},
                  constraints: constraints,
                  label: "Continue with Google",
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
