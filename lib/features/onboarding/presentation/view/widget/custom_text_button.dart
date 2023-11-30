import '../../../../../core/utils/app_string.dart';
import '../../../../Authuntication/login/presentaion/view/login.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, LoginPage.routeName);
      },
      child: const Text(
        AppString.skip,
      ),
    );
  }
}
