import 'package:car_rental/core/utils/app_color.dart';
import 'package:flutter/material.dart';

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(
        color: AppColor.primary,
      ));
}
