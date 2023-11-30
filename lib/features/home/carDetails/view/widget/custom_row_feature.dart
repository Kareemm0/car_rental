import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/cubit/car_cubit/car_brand_cubit.dart';
import '../../../../../core/utils/app_image.dart';

class CustomRowFeature extends StatelessWidget {
  const CustomRowFeature({super.key});

  @override
  Widget build(BuildContext context) {
    final carId = ModalRoute.of(context)!.settings.arguments as String;
    final cubit = BlocProvider.of<CarBrandListCubit>(context, listen: false);
    final getCars = cubit.findById(carId);
    return getCars == null
        ? const SizedBox.shrink()
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Image.asset(
                    AppImage.carEngine,
                    width: 80,
                    height: 80,
                  ),
                  const SizedBox(height: 10),
                  const Text("Engin Capacity"),
                  const SizedBox(height: 10),
                  Text(getCars.carEngineCapacity)
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    AppImage.horse,
                    width: 80,
                    height: 80,
                  ),
                  const SizedBox(height: 10),
                  const Text("Horse Power"),
                  const SizedBox(height: 10),
                  Text(getCars.hoursePower)
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    AppImage.seat,
                    width: 80,
                    height: 80,
                  ),
                  const SizedBox(height: 10),
                  const Text("Car Seats"),
                  const SizedBox(height: 10),
                  Text("${getCars.carseats}"),
                ],
              )
            ],
          );
  }
}
