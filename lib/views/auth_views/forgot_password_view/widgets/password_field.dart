import 'package:flutter/material.dart';
import 'package:kaala_mandi/res/app_colors.dart';

import '../../../../view_models/forgot_Password_vm/forgot_password_vm.dart';

class ForgotPasswordField extends StatelessWidget {
  final BoxConstraints constraints;
  final IconData icon;

  final ForgotPasswordViewModel viewModel;
  final TextEditingController controller;
  final String label;
  const ForgotPasswordField(
      {super.key,
      required this.viewModel,
      required this.controller,
      required this.label,
      required this.constraints,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Icon(
                  icon,
                  size: 24,
                  color: AppColors.lightIconGreyColor,
                ),
              ),
              Text(
                "|",
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: Colors.grey.shade600, fontWeight: FontWeight.w300),
              ),
              Expanded(
                child: TextFormField(
                  controller: controller,
                  decoration: InputDecoration(
                      hintText: label,
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                      // filled: true,
                      // fillColor: Colors.transparent.withOpacity(0.5),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 16.0 * 1.5, vertical: 16.0),
                      border: InputBorder.none),
                  keyboardType: TextInputType.emailAddress,
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
    );
  }
}
