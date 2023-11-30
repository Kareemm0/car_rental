import '../../../../../../core/utils/app_color.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomElevatedButtonAuth extends StatelessWidget {
  final String text;
  void Function()? onPressed;
  CustomElevatedButtonAuth({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.primary,
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            color: AppColor.white,
          ),
        ),
      ),
    );
  }
}
