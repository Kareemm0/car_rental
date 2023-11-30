import 'package:car_rental/core/function/vaildator.dart';
import 'package:car_rental/core/utils/app_color.dart';
import 'package:car_rental/core/utils/app_router.dart';
import 'package:car_rental/features/Authuntication/login/presentaion/view/widgets/custom_elevated_button.dart';
import 'package:car_rental/features/Authuntication/login/presentaion/view/widgets/custom_text.dart';
import 'package:car_rental/features/Authuntication/login/presentaion/view/widgets/custom_text_form_filde.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quickalert/quickalert.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  late TextEditingController newPasswordController;
  late TextEditingController reNewPasswordController;

  late FocusNode newPasswordFocusNode;
  late FocusNode reNewPasswordFoucsNode;

  final formKey = GlobalKey<FormState>();

  bool isObsecure = true;

  @override
  void initState() {
    newPasswordController = TextEditingController();
    reNewPasswordController = TextEditingController();

    newPasswordFocusNode = FocusNode();
    reNewPasswordFoucsNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    newPasswordController.dispose();
    reNewPasswordController.dispose();

    newPasswordFocusNode.dispose();
    reNewPasswordFoucsNode.dispose();
    super.dispose();
  }

  Future<void> newPassword() async {
    FocusScope.of(context).unfocus();
    final isVaild = formKey.currentState!.validate();
    if (isVaild) {
      QuickAlert.show(
          context: context,
          type: QuickAlertType.success,
          confirmBtnColor: AppColor.primary,
          onConfirmBtnTap: () {
            GoRouter.of(context).push(AppRouter.homeView);
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 80.0),
          child: Form(
            key: formKey,
            child: ListView(children: [
              const CustomTextAuth(
                text: "Reset Password",
                color: AppColor.primary,
                fontSize: 26,
                fontWeight: FontWeight.w900,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextFormFiled(
                  controller: newPasswordController,
                  focusNode: newPasswordFocusNode,
                  textInputAction: TextInputAction.next,
                  onFieldSubmitted: (val) {
                    FocusScope.of(context).requestFocus(reNewPasswordFoucsNode);
                  },
                  obsecure: isObsecure,
                  hintText: "New Password",
                  icon: IconButton(
                      onPressed: () {
                        setState(() {
                          isObsecure = !isObsecure;
                        });
                      },
                      icon: isObsecure
                          ? const Icon(Icons.lock_open)
                          : const Icon(Icons.lock)),
                  lablText: "New Password",
                  isNumber: false,
                  vaild: (vlaue) {
                    return AppVaildtor.passwordVaildtor(vlaue);
                  }),
              const SizedBox(
                height: 10,
              ),
              CustomTextFormFiled(
                  controller: reNewPasswordController,
                  focusNode: reNewPasswordFoucsNode,
                  textInputAction: TextInputAction.done,
                  obsecure: isObsecure,
                  hintText: "ReEnter New Password",
                  icon: IconButton(
                      onPressed: () {
                        setState(() {
                          isObsecure = !isObsecure;
                        });
                      },
                      icon: isObsecure
                          ? const Icon(Icons.lock_open)
                          : const Icon(Icons.lock)),
                  lablText: "New Password",
                  isNumber: false,
                  vaild: (vlaue) {
                    return AppVaildtor.confirmPasswordVaildtor(
                        password: reNewPasswordController.text, value: vlaue);
                  }),
              const SizedBox(
                height: 30,
              ),
              CustomElevatedButtonAuth(
                text: "Confirm",
                onPressed: () {
                  newPassword();
                },
              )
            ]),
          ),
        ),
      ),
    );
  }
}
