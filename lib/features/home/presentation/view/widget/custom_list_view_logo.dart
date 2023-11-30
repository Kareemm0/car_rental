import 'package:car_rental/features/home/data/home_list_logo.dart';
import 'package:flutter/material.dart';

class CustomListViewLogo extends StatelessWidget {
  const CustomListViewLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .1,
      child: ListView.builder(
          itemCount: homeList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Card(
                child: AspectRatio(
                  aspectRatio: 4 / 3,
                  child: InkWell(
                    onTap: () {},
                    child: Image.asset(homeList[index].image),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
