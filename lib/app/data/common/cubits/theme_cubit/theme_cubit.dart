import 'package:bloc/bloc.dart';
import 'package:expense_manager/app/core/enums/app_enums.dart';
import 'package:expense_manager/app/core/storage/app_preference.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../../../widgets/show_toast.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial()){
    _loadTheme();
  }

  void toggleTheme() async {
    ThemeMode newMode;
    if (state.themeMode == ThemeMode.light) {
      newMode = ThemeMode.dark;
    } else if (state.themeMode == ThemeMode.dark) {
      newMode = ThemeMode.system;
    } else {
      newMode = ThemeMode.light;
    }
    emit(ThemeInitial(themeMode: newMode));
    await _saveTheme(newMode);
  }

  /// Load the saved theme from SharedPreferences
  void _loadTheme() {
    String? theme = AppPreference.instance.getString("theme_mode");

    ThemeMode mode;
    if (theme == "light") {
      mode = ThemeMode.light;
    } else if (theme == "dark") {
      mode = ThemeMode.dark;
    } else {
      mode = ThemeMode.system;
    }
    ShowToast(msg: theme);

    emit(ThemeInitial(themeMode: mode));
  }

  /// Save theme to SharedPreferences
  Future<void> _saveTheme(ThemeMode themeMode) async {
    String theme = themeMode == ThemeMode.light
        ? "light"
        : themeMode == ThemeMode.dark
            ? "dark"
            : "system";
    ShowToast(msg: theme);
    await AppPreference.instance.setString("theme_mode", theme);
  }

  /// Set theme explicitly (Light, Dark, System)
  void setTheme(ThemeMode mode) async {
    emit(ThemeInitial(themeMode: mode));
    await _saveTheme(mode);
  }
}
