import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/app_string.dart';
import '../../../login/presentaion/view/login.dart';
import '../../../login/presentaion/view/widgets/custom_sign_up.dart';
import '../../../login/presentaion/view/widgets/custom_social_sign_up.dart';
import '../../../login/presentaion/view/widgets/custom_text.dart';
import '../../../login/presentaion/view/widgets/cutom_divider.dart';
import 'custom_text_filed_section.dart';
import 'package:flutter/material.dart';

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
                  Navigator.pushNamed(context, LoginPage.routeName);
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
