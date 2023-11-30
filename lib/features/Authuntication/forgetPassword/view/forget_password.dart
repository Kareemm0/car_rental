import '../../../../core/function/vaildator.dart';
import '../../../../core/utils/app_color.dart';
import '../../login/presentaion/view/widgets/custom_elevated_button.dart';
import '../../login/presentaion/view/widgets/custom_text.dart';
import '../../login/presentaion/view/widgets/custom_text_form_filde.dart';
import '../../verivication_code/view/verification_code.dart';
import 'package:flutter/material.dart';

class ForgetPasswordView extends StatefulWidget {
  static const routName = "/ForgetPasswordView";
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
      Navigator.pushNamed(context, VerficationCode.routeName);
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
