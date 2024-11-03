import 'package:flutter/material.dart';

class HeadingSmallText extends StatelessWidget {
  final String text;
  final Color? textColor;
  final FontWeight? fontWeight;
  const HeadingSmallText(
      {super.key, required this.text, this.textColor, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headlineSmall!.copyWith(
          color: textColor ?? Colors.grey.shade800,
          fontSize: 18,
          fontWeight: fontWeight ?? FontWeight.w700),
    );
  }
}

class HeadingMediumText extends StatelessWidget {
  final String text;
  final Color? textColor;
  final FontWeight? fontWeight;
  const HeadingMediumText(
      {super.key, required this.text, this.textColor, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headlineSmall!.copyWith(
          color: textColor ?? Colors.grey.shade800,
          fontSize: 22,
          fontWeight: fontWeight ?? FontWeight.w700),
    );
  }
}

class BodySmallText extends StatelessWidget {
  final String text;
  final Color? textColor;
  final FontWeight? fontWeight;
  const BodySmallText(
      {super.key, required this.text, this.textColor, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodySmall!.copyWith(
          color: textColor ?? Colors.grey.shade800,
          fontWeight: fontWeight ?? FontWeight.w700),
    );
  }
}

class BodyTinyText extends StatelessWidget {
  final String text;
  final Color? textColor;
  final FontWeight? fontWeight;
  const BodyTinyText(
      {super.key, required this.text, this.textColor, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodySmall!.copyWith(
          color: textColor ?? Colors.grey.shade600,
          fontWeight: fontWeight ?? FontWeight.w500),
    );
  }
}

class BodyMediumText extends StatelessWidget {
  final String text;
  final Color? textColor;
  final FontWeight? fontWeight;
  const BodyMediumText(
      {super.key, required this.text, this.textColor, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
          color: textColor ?? Colors.grey.shade800,
          fontWeight: fontWeight ?? FontWeight.w700),
    );
  }
}
