import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/app_string.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final void Function() onPressed;
  const CustomElevatedButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.primary,
      ),
      label: const Text(
        AppString.next,
        style: TextStyle(
          color: AppColor.white,
        ),
      ),
      icon: const Icon(
        Icons.arrow_right_alt,
        color: AppColor.white,
      ),
      onPressed: onPressed,
    );
  }
}
