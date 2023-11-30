import 'package:car_rental/core/utils/app_color.dart';
import 'package:car_rental/core/utils/app_string.dart';
import 'package:flutter/material.dart';

class CustomTextSplash extends StatelessWidget {
  final Animation<Offset> textAnimation;
  const CustomTextSplash({
    super.key,
    required this.textAnimation,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: textAnimation,
        builder: (context, _) => SlideTransition(
              position: textAnimation,
              child: const Text(
                AppString.splashText,
                style: TextStyle(
                  fontSize: 16,
                  color: AppColor.primary,
                ),
                textAlign: TextAlign.center,
              ),
            ));
  }
}
