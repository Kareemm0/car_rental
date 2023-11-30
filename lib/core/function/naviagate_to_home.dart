import '../../features/onboarding/presentation/view/onboardingview.dart';
import 'package:flutter/material.dart';

void navigateToHome(BuildContext context) {
  Future.delayed(
      const Duration(
        seconds: 5,
      ), () {
    Navigator.pushNamed(context, OnBoardingView.routeName);
  });
}
