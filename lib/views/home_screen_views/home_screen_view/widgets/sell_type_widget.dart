import 'package:flutter/material.dart';

import '../../../../res/widgets/text_widgets.dart';

class SellTypeWidget extends StatelessWidget {
  final String text;
  final String image;
  final BoxConstraints constraints;
  const SellTypeWidget(
      {super.key,
      required this.text,
      required this.image,
      required this.constraints});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: constraints.maxHeight * 0.035,
          backgroundColor: Colors.white38,
          backgroundImage: AssetImage(image),
        ),
        SizedBox(
          height: constraints.maxHeight * 0.01,
        ),
        BodySmallText(text: "Others", textColor: Colors.white)
      ],
    );
  }
}
