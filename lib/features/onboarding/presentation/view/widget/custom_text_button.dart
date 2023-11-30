import 'package:car_rental/core/utils/app_color.dart';
import 'package:car_rental/core/utils/app_router.dart';
import 'package:car_rental/core/utils/app_string.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        GoRouter.of(context).push(AppRouter.loginView);
      },
      child: const Text(
        AppString.skip,
        style: TextStyle(
          color: AppColor.black,
        ),
      ),
    );
  }
}
