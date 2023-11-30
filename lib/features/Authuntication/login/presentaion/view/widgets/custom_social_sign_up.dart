import 'package:car_rental/core/utils/app_color.dart';
import 'package:car_rental/core/utils/app_image.dart';
import 'package:flutter/material.dart';

class CustomSocialSignUp extends StatelessWidget {
  const CustomSocialSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.backgroung),
              onPressed: () {},
              child: const Row(
                children: [
                  Icon(
                    Icons.facebook,
                    color: AppColor.primary,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "FaceBook",
                    style: TextStyle(color: AppColor.black),
                  )
                ],
              )),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.backgroung),
              onPressed: () {},
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      AppImage.googleLogo,
                      height: 20,
                      width: 20,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "Google",
                    style: TextStyle(color: AppColor.black),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
