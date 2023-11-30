import '../../../../../../core/function/vaildator.dart';
import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/app_image.dart';
import '../../../../../../core/utils/app_string.dart';
import 'custom_elevated_button.dart';
import 'custom_forget_password.dart';
import 'custom_sign_up.dart';
import 'custom_social_sign_up.dart';
import 'custom_text.dart';
import 'custom_text_form_filde.dart';
import 'cutom_divider.dart';
import '../../../../register/view/register.dart';
import '../../../../../home/presentation/view/home.dart';
import 'package:flutter/material.dart';

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
      Navigator.pushNamed(context, HomePage.routeName);
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
                    Navigator.pushNamed(context, RegisterView.routeName);
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
