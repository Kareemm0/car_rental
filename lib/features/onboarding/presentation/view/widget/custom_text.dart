import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomText extends StatelessWidget {
  final String text;
  final Color textColor;
  final double textSize;
  final TextAlign textAlign;
  FontWeight? textWeight;

  CustomText(
      {super.key,
      required this.text,
      required this.textColor,
      required this.textSize,
      required this.textAlign,
      this.textWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: textColor,
        fontSize: textSize,
        fontWeight: FontWeight.w900,
      ),
    );
  }
}
