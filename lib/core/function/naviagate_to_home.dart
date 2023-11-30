import 'package:car_rental/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void navigateToHome(BuildContext context) {
  Future.delayed(
      const Duration(
        seconds: 5,
      ), () {
    GoRouter.of(context).push(AppRouter.onBoardingView);
  });
}
