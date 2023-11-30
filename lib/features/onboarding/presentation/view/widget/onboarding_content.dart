import 'package:car_rental/core/utils/app_color.dart';
import 'package:car_rental/features/onboarding/presentation/view/widget/custom_image.dart';
import 'package:car_rental/features/onboarding/presentation/view/widget/custom_text.dart';
import 'package:flutter/material.dart';

class OnBoardingContent extends StatelessWidget {
  final String image, title, body;
  const OnBoardingContent({
    super.key,
    required this.image,
    required this.title,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(children: [
        CustomText(
            text: title,
            textColor: AppColor.primary,
            textSize: 20,
            textAlign: TextAlign.center,
            textWeight: FontWeight.w900),
        const Spacer(),
        CustomImage(
          image: image,
        ),
        const SizedBox(
          height: 16,
        ),
        CustomText(
          text: body,
          textColor: AppColor.grey,
          textSize: 14.0,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 15,
        ),
        const Spacer(),
      ]),
    );
  }
}
