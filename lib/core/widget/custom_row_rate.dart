import '../utils/app_color.dart';
import 'package:flutter/material.dart';

class CustomRowRate extends StatelessWidget {
  const CustomRowRate({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.star_outline,
          color: AppColor.amber,
        ),
        Text("4.8")
      ],
    );
  }
}
