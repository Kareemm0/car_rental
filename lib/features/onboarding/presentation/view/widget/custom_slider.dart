import 'package:car_rental/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({
    super.key,
    this.isActive = false,
  });
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isActive ? 3 : 1,
      width: 20,
      decoration: const BoxDecoration(
          color: AppColor.primary,
          borderRadius: BorderRadius.all(Radius.circular(12))),
    );
  }
}
