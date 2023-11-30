import 'package:flutter/material.dart';

import 'widgets/login_view_body.dart';

class LoginPage extends StatelessWidget {
  static const routeName = "/LoginPage";
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const LoginViewBody();
  }
}
