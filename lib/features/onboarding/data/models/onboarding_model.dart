import '../../../../core/utils/app_image.dart';
import '../../../../core/utils/app_string.dart';

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
      image: AppImage.marc1,
      title: AppString.onboardingTitle,
      body: AppString.onboardingBody),
  OnBoard(
      image: AppImage.bmw1,
      title: AppString.onboardingTitle2,
      body: AppString.onboardingBody2),
  OnBoard(
      image: AppImage.bor1,
      title: AppString.onboardingTitle3,
      body: AppString.onboardingBody3),
];
