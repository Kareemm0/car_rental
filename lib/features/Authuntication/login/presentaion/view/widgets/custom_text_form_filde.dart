import 'package:flutter/material.dart';

class CustomTextFormFiled extends StatelessWidget {
  final String hintText;
  final IconButton icon;
  final String lablText;
  final TextEditingController controller;
  final FocusNode? focusNode;
  final bool isNumber;
  final bool? obsecure;
  final String? Function(String?) vaild;
  final TextInputAction textInputAction;
  final void Function(String)? onFieldSubmitted;
  const CustomTextFormFiled(
      {super.key,
      required this.hintText,
      required this.icon,
      required this.lablText,
      required this.controller,
      required this.isNumber,
      this.obsecure,
      required this.vaild,
      this.focusNode,
      required this.textInputAction,
      this.onFieldSubmitted});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30, right: 30, left: 30),
      child: TextFormField(
        onFieldSubmitted: onFieldSubmitted,
        focusNode: focusNode,
        obscureText: obsecure == null || obsecure == false ? false : true,
        keyboardType: isNumber
            ? const TextInputType.numberWithOptions(decimal: true)
            : TextInputType.text,
        validator: vaild,
        controller: controller,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(fontSize: 14),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            label: Container(
              margin: const EdgeInsets.symmetric(horizontal: 9),
              child: Text(lablText),
            ),
            suffixIcon: IconButton(
              icon: icon,
              onPressed: () {},
            ),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}
