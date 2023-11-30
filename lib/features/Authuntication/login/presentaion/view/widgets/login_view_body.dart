import 'package:car_rental/core/function/vaildator.dart';
import 'package:car_rental/core/utils/app_color.dart';
import 'package:car_rental/core/utils/app_image.dart';
import 'package:car_rental/core/utils/app_router.dart';
import 'package:car_rental/core/utils/app_string.dart';
import 'package:car_rental/features/Authuntication/login/presentaion/view/widgets/custom_elevated_button.dart';
import 'package:car_rental/features/Authuntication/login/presentaion/view/widgets/custom_forget_password.dart';
import 'package:car_rental/features/Authuntication/login/presentaion/view/widgets/custom_sign_up.dart';
import 'package:car_rental/features/Authuntication/login/presentaion/view/widgets/custom_social_sign_up.dart';
import 'package:car_rental/features/Authuntication/login/presentaion/view/widgets/custom_text.dart';
import 'package:car_rental/features/Authuntication/login/presentaion/view/widgets/custom_text_form_filde.dart';
import 'package:car_rental/features/Authuntication/login/presentaion/view/widgets/cutom_divider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  late TextEditingController phoneNumberController;
  late TextEditingController passwordController;

  late FocusNode phoneNumberFouceNode;
  late FocusNode passwordFouceNode;
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    phoneNumberController = TextEditingController();
    passwordController = TextEditingController();
    phoneNumberFouceNode = FocusNode();
    passwordFouceNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    phoneNumberController.dispose();
    passwordController.dispose();
    phoneNumberFouceNode.dispose();
    passwordFouceNode.dispose();
    super.dispose();
  }

  Future<void> login() async {
    final isVaild = formKey.currentState!.validate();
    FocusScope.of(context).unfocus();
    if (isVaild) {
      GoRouter.of(context).push(AppRouter.homeView);
    }
  }

  bool isObsecure = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: SafeArea(
          child: Form(
            key: formKey,
            child: ListView(
              children: [
                Image.asset(
                  AppImage.logo,
                  width: 80,
                  height: 80,
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomTextAuth(
                  text: AppString.loginTilte,
                  color: AppColor.primary,
                  fontWeight: FontWeight.w900,
                  fontSize: 26,
                ),
                const SizedBox(
                  height: 10,
                ),
                const CustomTextAuth(
                  text: AppString.loginbody,
                  color: AppColor.grey,
                ),
                const SizedBox(
                  height: 10,
                ),
                // phone Number
                CustomTextFormFiled(
                  textInputAction: TextInputAction.next,
                  onFieldSubmitted: (val) {
                    FocusScope.of(context).requestFocus(passwordFouceNode);
                  },
                  focusNode: phoneNumberFouceNode,
                  controller: phoneNumberController,
                  hintText: "Phone Number",
                  icon: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.phone)),
                  lablText: "Phone Number",
                  isNumber: true,
                  vaild: (phoneNumber) {
                    return AppVaildtor.phoneNumberVaildtor(phoneNumber);
                  },
                ),
                //password
                CustomTextFormFiled(
                  focusNode: passwordFouceNode,
                  textInputAction: TextInputAction.done,
                  controller: passwordController,
                  hintText: "Password ",
                  icon: IconButton(
                      onPressed: () {
                        setState(() {
                          isObsecure = !isObsecure;
                        });
                      },
                      icon: isObsecure
                          ? const Icon(Icons.lock_open)
                          : const Icon(Icons.lock)),
                  lablText: "Password",
                  obsecure: isObsecure,
                  isNumber: false,
                  vaild: (vlaue) {
                    return AppVaildtor.passwordVaildtor(vlaue);
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                const CustomForgetPassword(),
                const SizedBox(
                  height: 10,
                ),
                CustomElevatedButtonAuth(
                  text: "Login",
                  onPressed: () {
                    login();
                  },
                ),
                CustomSignUpText(
                  text: "First Time Here? ",
                  textAuth: "Sign Up ",
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.registerView);
                  },
                ),
                const CustomDivider(),
                const CustomSocialSignUp()
              ],
            ),
          ),
        ),
      )),
    );
  }
}
