import 'package:flutter/material.dart';

class CustomHomeText extends StatelessWidget {
  final String text;
  final Color color;
  const CustomHomeText({
    super.key,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
