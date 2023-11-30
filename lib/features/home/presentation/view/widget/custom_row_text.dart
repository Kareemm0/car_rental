import 'package:car_rental/core/utils/app_color.dart';
import 'package:car_rental/features/home/presentation/view/widget/custom_home_text.dart';
import 'package:flutter/material.dart';

class CustomRowText extends StatelessWidget {
  const CustomRowText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomHomeText(text: "All Cars", color: AppColor.black),
          CustomHomeText(text: "View All", color: AppColor.primary)
        ],
      ),
    );
  }
}
