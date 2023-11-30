import 'core/utils/app_constant.dart';
import 'core/cubit/car_cubit/car_brand_cubit.dart';
import 'core/cubit/theme_cubit/theme_cubit.dart';
import 'core/models/enums/theme_state.dart';
import 'core/utils/app_router.dart';
import 'features/splash/view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppConstant.sharedPreferences = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => CarBrandListCubit(),
          ),
          BlocProvider(
            create: (context) =>
                ThemeCubit()..changeTheme(AppThemeState.initial),
          )
        ],
        child: BlocBuilder<ThemeCubit, ThemeState>(
          builder: (context, state) {
            if (state is AppDarkThemeState) {
              return MaterialApp(
                  routes: router(),
                  debugShowCheckedModeBanner: false,
                  title: 'Car Rental ',
                  theme: ThemeData.dark(),
                  home: const SplashView());
            } else if (state is AppLightThemeState) {
              return MaterialApp(
                  routes: router(),
                  debugShowCheckedModeBanner: false,
                  title: 'Car Rental ',
                  theme: ThemeData.light(),
                  home: const SplashView());
            }
            return MaterialApp(
              routes: router(),
              debugShowCheckedModeBanner: false,
              title: 'Car Rental ',
              theme: ThemeData(),
              home: const SplashView(),
            );
          },
        ));
  }
}
