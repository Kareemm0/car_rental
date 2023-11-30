import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_color.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(15.0),
      child: Row(
        children: [
          Expanded(
            child: Divider(
              color: AppColor.grey,
              height: 20,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Text("Or Sign Up With"),
          SizedBox(
            width: 5,
          ),
          Expanded(
            child: Divider(
              color: AppColor.grey,
              height: 20,
            ),
          ),
        ],
      ),
    );
  }
}
