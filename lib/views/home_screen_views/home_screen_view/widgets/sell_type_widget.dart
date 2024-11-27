import 'package:flutter/material.dart';

import '../../../../res/widgets/text_widgets.dart';

class SellTypeWidget extends StatelessWidget {
  final String text;
  final String image;
  final BoxConstraints constraints;
  final VoidCallback onTap;
  const SellTypeWidget(
      {super.key,
      required this.text,
      required this.image,
      required this.constraints,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white38,
            ),
            height: constraints.maxHeight * 0.1,
            width: constraints.maxWidth * 0.14,

            child: Image.asset(
              image,
              scale: 6,
            ),
            // backgroundImage: AssetImage(
            //   image,
            // ),
          ),
          // SizedBox(
          //   height: constraints.maxHeight * 0.01,
          // ),
          BodySmallText(text: text, textColor: Colors.white)
        ],
      ),
    );
  }
}
