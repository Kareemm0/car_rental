import 'package:car_rental/core/utils/app_color.dart';
import 'package:car_rental/features/splash/view/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Car Rental ',
        theme: ThemeData(
          primaryColor: AppColor.primary,
          useMaterial3: true,
        ),
        home: const SplashView());
  }
}
