import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class CustomHeartButton extends StatefulWidget {
  const CustomHeartButton({super.key});

  @override
  State<CustomHeartButton> createState() => _CustomHeartButtonState();
}

class _CustomHeartButtonState extends State<CustomHeartButton> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: isClicked
          ? const Icon(
              IconlyBold.heart,
              color: Colors.red,
            ) // true
          : const Icon(
              IconlyLight.heart,
            ), // false
      onPressed: () {
        setState(() {
          isClicked = !isClicked;
        });
      },
    );
  }
}
