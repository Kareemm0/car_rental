import 'package:car_rental/core/utils/app_color.dart';
import 'package:car_rental/features/home/presentation/view/widget/custom_home_text.dart';
import 'package:car_rental/features/home/presentation/view/widget/custom_list_view_cars.dart';
import 'package:car_rental/features/home/presentation/view/widget/custom_list_view_logo.dart';
import 'package:car_rental/features/home/presentation/view/widget/custom_row_text.dart';
import 'package:car_rental/features/home/presentation/view/widget/custom_search_bar.dart';
import 'package:car_rental/features/home/presentation/view/widget/home_title.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              CustomHomeTitile(),
              CustomHomeText(
                  text: "Select Or Search Your", color: AppColor.black),
              CustomHomeText(text: "Favorite Vehical", color: AppColor.primary),
              SizedBox(
                height: 10,
              ),
              CustomSearchBar(),
              SizedBox(
                height: 15,
              ),
              CustomRowText(),
              CustomListViewLogo(),
            ],
          ),
        ),
        SliverFillRemaining(
          child: CustomListViewCars(),
        )
      ],
    ));
  }
}
