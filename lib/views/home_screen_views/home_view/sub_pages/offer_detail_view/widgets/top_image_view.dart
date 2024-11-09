import 'package:flutter/material.dart';

class TopImageView extends StatelessWidget {
  final String imagePath;
  final BoxConstraints constraints;
  const TopImageView(
      {super.key, required this.imagePath, required this.constraints});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: constraints.maxHeight * 0.45,
      child: Stack(
        children: [
          Container(
            height: constraints.maxHeight * 0.4,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black12),
            ),
            child: Center(
              child: Image.asset(imagePath),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: constraints.maxHeight * 0.05,
              width: constraints.maxWidth,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      offset: Offset(5, -10),
                      spreadRadius: 15,
                      blurRadius: 20)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
