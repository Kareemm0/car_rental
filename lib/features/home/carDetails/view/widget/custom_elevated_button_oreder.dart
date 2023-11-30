import 'package:car_rental/core/cubit/car_cubit/car_brand_cubit.dart';
import 'package:car_rental/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomElevatedButtonOrder extends StatelessWidget {
  const CustomElevatedButtonOrder({super.key});

  @override
  Widget build(BuildContext context) {
    final carId = ModalRoute.of(context)!.settings.arguments as String;
    final cubit = BlocProvider.of<CarBrandListCubit>(context);
    final getCars = cubit.findById(carId);
    return getCars == null
        ? const SizedBox.shrink()
        : Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.primary,
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Order Now ",
                    style: TextStyle(
                      color: AppColor.white,
                    ),
                  ),
                ),
                Text(
                  getCars.carPrice,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          );
  }
}
