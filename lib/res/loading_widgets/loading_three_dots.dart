import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class AppLoading {
  // Three rotating dots
  static Widget loadingThreeDot({
    required Color color,
    required double size,
  }) {
    return LoadingAnimationWidget.threeRotatingDots(
      color: color,
      size: size,
    );
  }
}
