import 'package:car_rental/core/utils/app_color.dart';
import 'package:car_rental/core/utils/app_image.dart';
import 'package:flutter/material.dart';

class CustomHomeTitile extends StatelessWidget {
  const CustomHomeTitile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Row(
            children: [
              Card(
                child: Icon(Icons.location_on),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Text(
                    "Your Loaction",
                    style: TextStyle(
                      color: AppColor.grey,
                    ),
                  ),
                  Text("Mansoura Egypt"),
                ],
              ),
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              AppImage.person,
              width: 50,
              height: 50,
            ),
          )
        ],
      ),
    );
  }
}
