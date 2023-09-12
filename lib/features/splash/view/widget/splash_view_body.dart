import 'package:flutter/material.dart';

class SplashViweBody extends StatelessWidget {
  const SplashViweBody({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(),
      ),
    );
  }
}
