import 'widget/custom_dark_mode_button.dart';
import 'widget/home_view_body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const routeName = "/HomePage";
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: const [
          CustomDarkModeButton(),
        ],
      ),
      body: const HomeViewBody(),
    );
  }
}
