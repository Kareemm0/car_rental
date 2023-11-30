import 'package:car_rental/features/home/carDetails/view/widget/custom_elevated_button_oreder.dart';

import '../../../../core/cubit/car_cubit/car_brand_cubit.dart';
import '../../../../core/widget/custom_row_rate.dart';
import 'widget/custom_row_feature.dart';
import '../../../../core/widget/custom_heart_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarDetails extends StatelessWidget {
  static const routeName = "/CarDetails";
  const CarDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final carId = ModalRoute.of(context)!.settings.arguments as String;

    final cubit = BlocProvider.of<CarBrandListCubit>(context, listen: false);
    final getCars = cubit.findById(carId);
    return Scaffold(
        appBar: AppBar(),
        body: getCars == null
            ? const SizedBox.shrink()
            : SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Image.asset(getCars.carImage),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            getCars.carName,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          const CustomRowRate(),
                          const CustomHeartButton(),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          getCars.carDescripation,
                        ),
                      ),
                      const Text(
                        "Feature",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const CustomRowFeature()
                    ],
                  ),
                ),
              ),
        bottomSheet: const CustomElevatedButtonOrder());
  }
}
