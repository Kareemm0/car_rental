import 'package:flutter/material.dart';

class CustomTextAuth extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight? fontWeight;
  final double? fontSize;

  const CustomTextAuth({
    super.key,
    required this.text,
    required this.color,
    this.fontWeight,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(color: color, fontWeight: fontWeight, fontSize: fontSize),
      textAlign: TextAlign.center,
    );
  }
}
