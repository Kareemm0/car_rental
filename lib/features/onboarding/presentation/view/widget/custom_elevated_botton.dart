import 'package:car_rental/core/utils/app_string.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final void Function() onPressed;
  const CustomElevatedButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: ElevatedButton(
        onPressed: onPressed,
        child: const Row(
          children: [
            Text(AppString.next),
            SizedBox(
              width: 7,
            ),
            Icon(
              Icons.arrow_right_alt,
            ),
          ],
        ),
      ),
    );
  }
}
