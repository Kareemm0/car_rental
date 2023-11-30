import 'package:car_rental/core/utils/app_image.dart';
import 'package:car_rental/core/utils/app_string.dart';

class OnBoard {
  final String image, title, body;

  OnBoard({
    required this.image,
    required this.title,
    required this.body,
  });
}

final List<OnBoard> onboardingList = [
  OnBoard(
      image: AppImage.car1,
      title: AppString.onboardingTitle,
      body: AppString.onboardingBody),
  OnBoard(
      image: AppImage.car2,
      title: AppString.onboardingTitle2,
      body: AppString.onboardingBody2),
  OnBoard(
      image: AppImage.car3,
      title: AppString.onboardingTitle3,
      body: AppString.onboardingBody3),
];
