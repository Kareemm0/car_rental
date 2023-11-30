import '../../../../../core/function/out_line_bordar.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatefulWidget {
  final TextEditingController controller;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  const CustomSearchBar({
    super.key,
    required this.controller,
    this.onChanged,
    this.onSubmitted,
  });

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        onChanged: widget.onChanged,
        onSubmitted: widget.onSubmitted,
        controller: widget.controller,
        decoration: InputDecoration(
            enabledBorder: outlineInputBorder(),
            focusedBorder: outlineInputBorder(),
            hintText: "Search",
            prefixIcon: const Icon(Icons.search),
            suffixIcon: IconButton(
              icon: const Icon(Icons.clear),
              onPressed: () {
                setState(() {
                  widget.controller.clear();
                });
              },
            )),
      ),
    );
  }
}
