import 'package:flutter/material.dart';

import '../../../../core/utils/app_string.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.animation});
  final Animation<Offset> animation;
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: animation,
        builder: (context, _) {
          return SlideTransition(
            position: animation,
            child: const Text(
              AppString.splashText,
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
