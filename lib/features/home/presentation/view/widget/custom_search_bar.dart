import 'package:car_rental/core/function/out_line_bordar.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        decoration: InputDecoration(
            enabledBorder: outlineInputBorder(),
            focusedBorder: outlineInputBorder(),
            hintText: "Search",
            prefixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            )),
      ),
    );
  }
}
