import 'package:flutter/material.dart';

class TermsConditionsWidget extends StatelessWidget {
  final BuildContext context;
  final BoxConstraints constraints;
  const TermsConditionsWidget(
      {super.key, required this.context, required this.constraints});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Center(
        child: Column(
          children: [
            Text(
              "By Continuing you agree to our",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.grey.shade600, fontWeight: FontWeight.w500),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Terms of use",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline),
                ),
                Text(
                  "  and  ",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Text(
                  "Privacy Policy",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline),
                ),
              ],
            ),
            SizedBox(
              height: constraints.maxHeight * 0.03,
            ),
          ],
        ),
      ),
    );
  }
}
