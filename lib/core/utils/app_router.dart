import 'package:car_rental/features/splash/view/splash_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/onboarding/view/onboardingview.dart';

abstract class AppRouter {
  static const onBoardingView = "/onBoardingView";

  static final router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: "onboardingview",
      builder: (context, state) => const OnBoardingView(),
    )
  ]);
}
