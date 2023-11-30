import 'package:car_rental/core/function/vaildator.dart';
import 'package:car_rental/core/utils/app_router.dart';
import 'package:car_rental/features/Authuntication/login/presentaion/view/widgets/custom_elevated_button.dart';
import 'package:car_rental/features/Authuntication/login/presentaion/view/widgets/custom_text_form_filde.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconly/iconly.dart';

class CustomTextFiledSection extends StatefulWidget {
  const CustomTextFiledSection({super.key});

  @override
  State<CustomTextFiledSection> createState() => _CustomTextFiledSectionState();
}

class _CustomTextFiledSectionState extends State<CustomTextFiledSection> {
  late TextEditingController userNameController;
  late TextEditingController phoneNumberController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;

  late FocusNode usernameFoucsNode;
  late FocusNode phoneNumberFoucsNode;
  late FocusNode passwordFoucsNode;
  late FocusNode confirmPasswordFoucsNode;

  final formKey = GlobalKey<FormState>();

  bool isObsecure = true;

  @override
  void initState() {
    userNameController = TextEditingController();
    phoneNumberController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();

    usernameFoucsNode = FocusNode();
    phoneNumberFoucsNode = FocusNode();
    passwordFoucsNode = FocusNode();
    confirmPasswordFoucsNode = FocusNode();

    super.initState();
  }

  @override
  void dispose() {
    userNameController.dispose();
    phoneNumberController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();

    usernameFoucsNode.dispose();
    phoneNumberFoucsNode.dispose();
    passwordFoucsNode.dispose();
    confirmPasswordFoucsNode.dispose();

    super.dispose();
  }

  Future<void> register() async {
    FocusScope.of(context).unfocus();
    final isVaild = formKey.currentState!.validate();
    if (isVaild) {
      GoRouter.of(context).push(AppRouter.homeView);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          //username
          CustomTextFormFiled(
              controller: userNameController,
              focusNode: usernameFoucsNode,
              textInputAction: TextInputAction.next,
              onFieldSubmitted: (val) {
                FocusScope.of(context).requestFocus(phoneNumberFoucsNode);
              },
              hintText: "username",
              icon: IconButton(
                  onPressed: () {}, icon: const Icon(IconlyLight.profile)),
              lablText: "username",
              isNumber: false,
              vaild: (value) {
                return AppVaildtor.displayNameValidator(value);
              }),
          // phone number
          CustomTextFormFiled(
              controller: phoneNumberController,
              focusNode: phoneNumberFoucsNode,
              textInputAction: TextInputAction.next,
              onFieldSubmitted: (va) {
                FocusScope.of(context).requestFocus(passwordFoucsNode);
              },
              hintText: "PhoneNumber",
              icon: IconButton(onPressed: () {}, icon: const Icon(Icons.phone)),
              lablText: "PhoneNumber",
              isNumber: true,
              vaild: (value) {
                return AppVaildtor.phoneNumberVaildtor(value);
              }),
          // password
          CustomTextFormFiled(
              controller: passwordController,
              focusNode: passwordFoucsNode,
              textInputAction: TextInputAction.next,
              onFieldSubmitted: (val) {
                FocusScope.of(context).requestFocus(confirmPasswordFoucsNode);
              },
              hintText: "Password",
              icon: IconButton(
                  onPressed: () {
                    setState(() {
                      isObsecure = !isObsecure;
                    });
                  },
                  icon: isObsecure
                      ? const Icon(Icons.lock_open)
                      : const Icon(Icons.lock)),
              lablText: "password",
              isNumber: false,
              obsecure: isObsecure,
              vaild: (value) {
                return AppVaildtor.passwordVaildtor(value);
              }),
          //confirm Password
          CustomTextFormFiled(
              controller: confirmPasswordController,
              focusNode: confirmPasswordFoucsNode,
              textInputAction: TextInputAction.done,
              hintText: "Confirm Password",
              icon: IconButton(
                  onPressed: () {
                    setState(() {
                      isObsecure = !isObsecure;
                    });
                  },
                  icon: isObsecure
                      ? const Icon(Icons.lock_open)
                      : const Icon(Icons.lock)),
              lablText: "Confirm password",
              isNumber: false,
              obsecure: isObsecure,
              vaild: (value) {
                return AppVaildtor.confirmPasswordVaildtor(
                    value: value, password: confirmPasswordController.text);
              }),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 40,
            width: double.infinity,
            child: CustomElevatedButtonAuth(
              text: "Sign Up",
              onPressed: () {
                register();
              },
            ),
          ),
        ],
      ),
    );
  }
}
