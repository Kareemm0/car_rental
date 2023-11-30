import '../../../core/cubit/car_cubit/car_brand_cubit.dart';
import '../../../core/models/car_model.dart';
import '../presentation/view/widget/custom_list_view_cars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarBrandList extends StatelessWidget {
  static const routeName = "/CarBrandList";
  const CarBrandList({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<CarBrandListCubit>(context);
    String? passCarsCategory =
        ModalRoute.of(context)!.settings.arguments as String?;

    final List<CarModel> carListCategory = passCarsCategory == null
        ? cubit.getCars
        : cubit.findByCategory(categoryName: passCarsCategory);

    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return CustomListViewCars(
            carId: carListCategory[index].carId,
            carImage: carListCategory[index].carImage,
            carName: carListCategory[index].carName,
            carType: carListCategory[index].carType,
          );
        },
        itemCount: carListCategory.length,
      ),
    );
  }
}
