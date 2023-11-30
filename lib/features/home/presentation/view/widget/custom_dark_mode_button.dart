import '../../../../../core/cubit/theme_cubit/theme_cubit.dart';
import '../../../../../core/models/enums/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomDarkModeButton extends StatefulWidget {
  const CustomDarkModeButton({super.key});

  @override
  State<CustomDarkModeButton> createState() => _CustomDarkModeButtonState();
}

class _CustomDarkModeButtonState extends State<CustomDarkModeButton> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<ThemeCubit>(context);
    return IconButton(
      onPressed: () {
        isDark
            ? cubit.changeTheme(AppThemeState.light)
            : cubit.changeTheme(AppThemeState.dark);
        setState(() {
          isDark = !isDark;
        });
      },
      icon: isDark ? const Icon(Icons.light_mode) : const Icon(Icons.dark_mode),
    );
  }
}
