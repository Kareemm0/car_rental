import '../../../../../core/cubit/car_cubit/car_brand_cubit.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/widget/custom_row_rate.dart';
import '../../../carDetails/view/car_details.dart';
import '../../../../../core/widget/custom_heart_button.dart';
import 'custom_home_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomListViewCars extends StatelessWidget {
  final String carId;
  final String carImage;
  final String carName;
  final String carType;
  const CustomListViewCars(
      {super.key,
      required this.carId,
      required this.carImage,
      required this.carName,
      required this.carType});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<CarBrandListCubit>(context);
    final getCars = cubit.findById(carId);
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          CarDetails.routeName,
          arguments: getCars.carId,
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const CustomHeartButton(),
              Image.asset(
                carImage,
                width: double.infinity,
                height: 180,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomHomeText(
                    text: carName,
                  ),
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
                    text: carType,
                    color: AppColor.grey,
                  ),
                  CustomHomeText(
                    text: getCars!.carPrice,
                    color: AppColor.primary,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

//  