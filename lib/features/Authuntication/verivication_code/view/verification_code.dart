import 'package:car_rental/core/utils/app_color.dart';
import 'package:car_rental/core/utils/app_router.dart';
import 'package:car_rental/features/Authuntication/login/presentaion/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:go_router/go_router.dart';

class VerficationCode extends StatelessWidget {
  const VerficationCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100.0),
        child: ListView(
          children: [
            const CustomTextAuth(
              text: "VerficationCode",
              color: AppColor.primary,
              fontSize: 26,
              fontWeight: FontWeight.w900,
            ),
            const SizedBox(
              height: 50,
            ),
            OtpTextField(
              fieldWidth: 50,
              borderRadius: BorderRadius.circular(20),
              numberOfFields: 5,
              borderColor: AppColor.primary,
              showFieldAsBox: true,
              onCodeChanged: (String code) {},
              onSubmit: (String verificationCode) {
                GoRouter.of(context).push(AppRouter.resetPassword);
              },
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
