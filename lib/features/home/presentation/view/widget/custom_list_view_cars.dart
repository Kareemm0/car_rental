import 'package:car_rental/core/utils/app_color.dart';
import 'package:car_rental/core/utils/app_router.dart';
import 'package:car_rental/core/widget/custom_row_rate.dart';
import 'package:car_rental/features/home/data/home_list_car.dart';
import 'package:car_rental/features/home/presentation/view/widget/custom_home_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconly/iconly.dart';

class CustomListViewCars extends StatelessWidget {
  const CustomListViewCars({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: homeCarList.length,
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 30,
        );
      },
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            GoRouter.of(context).push(AppRouter.carDetails);
          },
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Icon(IconlyBold.heart),
                Image.asset(
                  homeCarList[index].image,
                  width: double.infinity,
                  height: 180,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomHomeText(
                        text: homeCarList[index].carBrand,
                        color: AppColor.black),
                    const CustomRowRate()
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomHomeText(
                        text: homeCarList[index].carType, color: AppColor.grey),
                    CustomHomeText(
                        text: homeCarList[index].price,
                        color: AppColor.primary),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

//  