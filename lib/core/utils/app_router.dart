import '../../features/Authuntication/forgetPassword/view/forget_password.dart';
import '../../features/Authuntication/login/presentaion/view/login.dart';
import '../../features/Authuntication/register/view/register.dart';
import '../../features/Authuntication/resetPassword/reset_password.dart';
import '../../features/Authuntication/verivication_code/view/verification_code.dart';
import '../../features/home/carDetails/view/car_details.dart';
import '../../features/home/car_brand_List/car_brand_list.dart';
import '../../features/home/presentation/view/home.dart';
import '../../features/onboarding/presentation/view/onboardingview.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> router() {
  return {
    ForgetPasswordView.routName: (context) => const ForgetPasswordView(),
    LoginPage.routeName: (context) => const LoginPage(),
    RegisterView.routeName: (context) => const RegisterView(),
    ResetPassword.routeName: (context) => const ResetPassword(),
    VerficationCode.routeName: (context) => const VerficationCode(),
    CarBrandList.routeName: (context) => const CarBrandList(),
    CarDetails.routeName: (context) => const CarDetails(),
    HomePage.routeName: (context) => const HomePage(),
    OnBoardingView.routeName: (context) => const OnBoardingView(),
  };
}
