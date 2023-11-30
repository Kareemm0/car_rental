import 'package:flutter/material.dart';

import '../../../car_brand_List/car_brand_list.dart';

class CustomListViewLogo extends StatelessWidget {
  final String logoImage;
  final String logoName;
  const CustomListViewLogo({
    super.key,
    required this.logoImage,
    required this.logoName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(
                context,
                CarBrandList.routeName,
                arguments: logoName,
              );
            },
            child: Image.asset(
              logoImage,
              height: 100,
              width: 100,
            ),
          ),
          Text(logoName)
        ],
      ),
    );
  }
}
