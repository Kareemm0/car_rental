import 'package:car_rental/core/utils/app_color.dart';
import 'package:car_rental/core/utils/app_router.dart';
import 'package:car_rental/core/utils/app_string.dart';
import 'package:car_rental/features/Authuntication/login/presentaion/view/widgets/custom_sign_up.dart';
import 'package:car_rental/features/Authuntication/login/presentaion/view/widgets/custom_social_sign_up.dart';
import 'package:car_rental/features/Authuntication/login/presentaion/view/widgets/custom_text.dart';
import 'package:car_rental/features/Authuntication/login/presentaion/view/widgets/cutom_divider.dart';
import 'package:car_rental/features/Authuntication/register/view/widget/custom_text_filed_section.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterViewBody extends StatefulWidget {
  const RegisterViewBody({super.key});

  @override
  State<RegisterViewBody> createState() => _RegisterViewBodyState();
}

class _RegisterViewBodyState extends State<RegisterViewBody> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: ListView(
            children: [
              const CustomTextAuth(
                text: AppString.newAccount,
                color: AppColor.primary,
                fontSize: 26,
                fontWeight: FontWeight.w900,
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomTextAuth(
                text: AppString.registerBody,
                color: AppColor.grey,
              ),
              const CustomTextFiledSection(),
              CustomSignUpText(
                text: "Already Have An Account ?",
                textAuth: "Log in ",
                onTap: () {
                  GoRouter.of(context).push(AppRouter.loginView);
                },
              ),
              const CustomDivider(),
              const CustomSocialSignUp()
            ],
          ),
        ),
      ),
    );
  }
}
