import '../../../../../../core/utils/app_color.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomSignUpText extends StatelessWidget {
  final String text;
  final String textAuth;
  void Function()? onTap;
  CustomSignUpText(
      {super.key, required this.text, required this.textAuth, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text),
          InkWell(
            onTap: onTap,
            child: Text(
              textAuth,
              style: const TextStyle(
                  color: AppColor.primary, fontWeight: FontWeight.w700),
            ),
          )
        ],
      ),
    );
  }
}
