import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/app_string.dart';
import '../../../../forgetPassword/view/forget_password.dart';
import 'package:flutter/material.dart';

class CustomForgetPassword extends StatelessWidget {
  const CustomForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, ForgetPasswordView.routName);
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
