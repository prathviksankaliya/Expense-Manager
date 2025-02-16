import 'package:bloc/bloc.dart';
import 'package:expense_manager/app/core/storage/app_preference.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'theme_event.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeMode> {
  ThemeBloc() : super(ThemeMode.system) {
    on<ChangeTheme>((event, emit) async {
      emit(event.themeMode);
      await _saveThemeMode(event.themeMode);
    });
    _loadThemeMode();
  }

  static const String _themeKey = "selected_theme";

  Future<void> _saveThemeMode(ThemeMode mode) async {

    await AppPreference.instance.setInt(_themeKey, mode.index);
  }

  Future<void> _loadThemeMode() async {
    int themeIndex = AppPreference.instance.getInt(_themeKey, defaultValue: -1);
    if (themeIndex != -1) {
      add(ChangeTheme(ThemeMode.values[themeIndex]));
    }
  }
}