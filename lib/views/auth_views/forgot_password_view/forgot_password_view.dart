import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaala_mandi/res/widgets/text_widgets.dart';
import 'package:kaala_mandi/view_models/forgot_Password_vm/forgot_password_vm.dart';
import 'package:kaala_mandi/views/auth_views/phone_login/widgets/terms_conditions_widget.dart';

import '../../../../res/app_colors.dart';
import 'widgets/password_field.dart';

class ForgotPasswordView extends StatefulWidget {
  ForgotPasswordView({super.key});

  @override
  State<ForgotPasswordView> createState() => _LoginViewState();
}

class _LoginViewState extends State<ForgotPasswordView> {
  final _formKey = GlobalKey<FormState>();

  late ForgotPasswordViewModel viewModel;

  @override
  void initState() {
    // TODO: implement initState
    viewModel = Get.put(ForgotPasswordViewModel());
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
                    "Forgot Password for kaala Mandi",
                    textAlign: TextAlign.center,
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
                ForgotPasswordField(
                    icon: Icons.email_outlined,
                    viewModel: viewModel,
                    controller: viewModel.emailController,
                    label: "Enter email for reset Password",
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
                        viewModel.goBackToLogin();
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.arrow_back_ios_new,
                            color: AppColors.lightPrimaryColor,
                            size: 14,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          BodySmallText(
                            text: "Back to Login",
                            textColor: AppColors.lightPrimaryColor,
                            // fontWeight: FontWeight.normal,
                          ),
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
                      text: "Reset Password",
                      textColor: Colors.white,
                    ),
                  ),
                ),

                SizedBox(
                  height: constraints.maxHeight * 0.1,
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
