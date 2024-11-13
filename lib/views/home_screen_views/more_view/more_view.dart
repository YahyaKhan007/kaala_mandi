import 'package:flutter/material.dart';
import 'package:kaala_mandi/res/app_colors.dart';
import 'package:kaala_mandi/res/widgets/text_widgets.dart';

class MoreView extends StatelessWidget {
  const MoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBackgroundColor,
      body: LayoutBuilder(builder: (context, constraints) {
        return Column(
          children: [
            Container(
              height: constraints.maxHeight * 0.4,
              color: AppColors.lightPrimaryColor,
              child: Center(
                child: ListTile(
                  title: HeadingLargeText(
                    text: "Usama Haneef",
                    textColor: Colors.white,
                  ),
                  subtitle: Row(
                    children: [
                      BodyLargeText(
                        text: "View Profile",
                        textColor: Colors.white,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 16,
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            moreOptions(label: "Saved Ads", onTap: () {}),
          ],
        );
      }),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BodyMediumText(text: "Need Help? "),
              BodyMediumText(
                text: "Contact Us",
                textColor: AppColors.lightPrimaryColor,
              ),
            ],
          ),
          BodySmallText(text: 'version 1.0.0'),
          SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }

  Widget moreOptions({required VoidCallback onTap, required String label}) {
    return SizedBox(
      height: 48,
      child: ListTile(
        title: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  BodyLargeText(text: "Saved Ads"),
                  SizedBox(
                    height: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 32),
                    child: Divider(
                      color: AppColors.lightGreyColor,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 16,
            ),
          ],
        ),
        // trailing: Icon(
        //   Icons.arrow_forward_ios,
        //   size: 16,
        // ),
      ),
    );
  }
}
