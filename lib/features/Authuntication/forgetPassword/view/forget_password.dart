import 'package:car_rental/core/function/vaildator.dart';
import 'package:car_rental/core/utils/app_color.dart';
import 'package:car_rental/core/utils/app_router.dart';
import 'package:car_rental/features/Authuntication/login/presentaion/view/widgets/custom_elevated_button.dart';
import 'package:car_rental/features/Authuntication/login/presentaion/view/widgets/custom_text.dart';
import 'package:car_rental/features/Authuntication/login/presentaion/view/widgets/custom_text_form_filde.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({super.key});

  @override
  State<ForgetPasswordView> createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  late TextEditingController phoneNumberController;

  final formKey = GlobalKey<FormState>();

  Future<void> forgetPassword() async {
    final isVaild = formKey.currentState!.validate();
    FocusScope.of(context).unfocus();
    if (isVaild) {
      GoRouter.of(context).push(AppRouter.verficationCode);
    }
  }

  @override
  void initState() {
    phoneNumberController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Form(
            key: formKey,
            child: ListView(children: [
              const CustomTextAuth(
                text: "Forget Password",
                color: AppColor.primary,
                fontSize: 26,
                fontWeight: FontWeight.w900,
              ),
              CustomTextFormFiled(
                  controller: phoneNumberController,
                  textInputAction: TextInputAction.done,
                  hintText: "Phone Number",
                  icon: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.phone)),
                  lablText: "Phone Number",
                  isNumber: true,
                  vaild: (value) {
                    return AppVaildtor.phoneNumberVaildtor(value);
                  }),
              const SizedBox(
                height: 20,
              ),
              CustomElevatedButtonAuth(
                  text: "Confirm",
                  onPressed: () {
                    forgetPassword();
                  })
            ]),
          ),
        ),
      ),
    );
  }
}
