import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kaala_mandi/res/app_colors.dart';

class ContinueWithButtonWidget extends StatelessWidget {
  final BoxConstraints constraints;
  final String? imagePath;
  final String label;
  final VoidCallback onTap;
  const ContinueWithButtonWidget(
      {super.key,
      required this.constraints,
      this.imagePath = null,
      required this.label,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 56,
        width: constraints.maxWidth,
        margin: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          children: [
            SizedBox(
              width: 16,
            ),
            imagePath != null
                ? SvgPicture.asset(
                    imagePath!,
                    height: 24,
                  )
                : Icon(
                    label.contains("Phone") ? Icons.phone : Icons.email,
                    size: 24,
                    color: Colors.grey.shade600,
                  ),
            Expanded(
              child: Center(
                child: Text(
                  label,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 14,
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SizedBox(
              width: 20,
            )
          ],
        ),
      ),
    );
  }
}

// continue with numbers
class ContinueWithPhone extends StatelessWidget {
  final VoidCallback onTap;
  final BoxConstraints constraints;
  const ContinueWithPhone(
      {super.key, required this.onTap, required this.constraints});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 56,
        width: constraints.maxWidth,
        margin: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
            color: AppColors.lightPrimaryColor,
            borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            "Continue with Mobile Number",
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
