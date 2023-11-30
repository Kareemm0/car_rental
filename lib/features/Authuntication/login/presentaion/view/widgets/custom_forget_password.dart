import 'package:car_rental/core/utils/app_color.dart';
import 'package:car_rental/core/utils/app_router.dart';
import 'package:car_rental/core/utils/app_string.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomForgetPassword extends StatelessWidget {
  const CustomForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: InkWell(
        onTap: () {
          GoRouter.of(context).push(AppRouter.forgetPasswordView);
        },
        child: const Text(
          AppString.forgetPassowrd,
          textAlign: TextAlign.end,
          style: TextStyle(color: AppColor.primary),
        ),
      ),
    );
  }
}
