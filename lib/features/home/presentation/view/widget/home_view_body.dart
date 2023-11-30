import '../../../../../core/cubit/car_cubit/car_brand_cubit.dart';
import '../../../../../core/models/car_model.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../data/home_list_logo.dart';
import 'custom_home_text.dart';
import 'custom_list_view_cars.dart';
import 'custom_list_view_logo.dart';
import 'custom_row_text.dart';
import 'custom_search_bar.dart';
import 'home_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  late TextEditingController searchController;

  @override
  void initState() {
    searchController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  List<CarModel> carSearchList = [];

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<CarBrandListCubit>(context);

    return SafeArea(
        child: CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              const CustomHomeTitile(),
              const CustomHomeText(
                text: "Select Or Search Your",
              ),
              const CustomHomeText(
                  text: "Favorite Vehical", color: AppColor.primary),
              const SizedBox(
                height: 10,
              ),
              CustomSearchBar(
                controller: searchController,
                onSubmitted: (value) {
                  setState(() {
                    carSearchList =
                        cubit.search(searchText: searchController.text);
                  });
                },
              ),
              if (searchController.text.isNotEmpty &&
                  carSearchList.isEmpty) ...[
                const Center(child: CustomHomeText(text: "No Cars Found"))
              ],
              const SizedBox(
                height: 15,
              ),
              const CustomRowText(),
              SizedBox(
                height: 140,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return CustomListViewLogo(
                      logoImage: homeList[index].image,
                      logoName: homeList[index].name,
                    );
                  },
                  itemCount: homeList.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return CustomListViewCars(
                carId: searchController.text.isNotEmpty
                    ? carSearchList[index].carId
                    : cubit.getCars[index].carId,
                carImage: searchController.text.isNotEmpty
                    ? carSearchList[index].carImage
                    : cubit.getCars[index].carImage,
                carName: searchController.text.isNotEmpty
                    ? carSearchList[index].carName
                    : cubit.getCars[index].carName,
                carType: searchController.text.isNotEmpty
                    ? carSearchList[index].carType
                    : cubit.getCars[index].carType,
              );
            },
            itemCount: searchController.text.isNotEmpty
                ? carSearchList.length
                : cubit.getCars.length,
          ),
        )
      ],
    ));
  }
}
