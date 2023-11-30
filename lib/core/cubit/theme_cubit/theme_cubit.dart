import 'package:bloc/bloc.dart';
import '../../utils/app_constant.dart';
import '../../models/enums/theme_state.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());

  changeTheme(AppThemeState state) {
    switch (state) {
      case AppThemeState.initial:
        if (AppConstant.sharedPreferences!.getString("theme") != null) {
          if (AppConstant.sharedPreferences!.getString("theme") == "l") {
            emit(AppLightThemeState());
          } else {
            emit(AppDarkThemeState());
          }
        }
        break;
      case AppThemeState.light:
        AppConstant.sharedPreferences!.setString("theme", "l");
        emit(AppLightThemeState());
        break;
      case AppThemeState.dark:
        AppConstant.sharedPreferences!.setString("theme", "d");
        emit(AppDarkThemeState());
        break;
      default:
    }
  }
}
