import 'package:expense_manager/app/core/theme/app_button_theme.dart';
import 'package:expense_manager/app/core/theme/app_text_theme.dart';
import 'package:expense_manager/app/core/theme/app_textfield_theme.dart';
import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

class AppTheme {

  /// This getter will dynamically return the correct TextTheme based on brightness.
  static TextTheme get textTheme {
    final Brightness brightness =
        WidgetsBinding.instance.platformDispatcher.platformBrightness;
    return brightness == Brightness.dark
        ? AppTextTheme.darkTextTheme
        : AppTextTheme.lightTextTheme;
  }

  /// Get the correct ButtonTheme based on system brightness.
  static ElevatedButtonThemeData get buttonTheme {
    final Brightness brightness =
        WidgetsBinding.instance.platformDispatcher.platformBrightness;
    return brightness == Brightness.dark
        ? AppButtonTheme.darkButtonTheme
        : AppButtonTheme.lightButtonTheme;
  }

  /// Get the correct InputDecorationTheme based on system brightness.
  static InputDecorationTheme get textFieldTheme {
    final Brightness brightness =
        WidgetsBinding.instance.platformDispatcher.platformBrightness;
    return brightness == Brightness.dark
        ? AppTextFieldTheme.darkInputDecorationTheme
        : AppTextFieldTheme.lightInputDecorationTheme;
  }

  // Light Theme
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.backgroundLight,
    cardColor: AppColors.surfaceLight,
    textTheme: AppTextTheme.lightTextTheme,
    elevatedButtonTheme: AppButtonTheme.lightButtonTheme,
    inputDecorationTheme: AppTextFieldTheme.lightInputDecorationTheme,
  );

  // Dark Theme
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primaryDark,
    scaffoldBackgroundColor: AppColors.backgroundDark,
    cardColor: AppColors.surfaceDark,
    textTheme: AppTextTheme.darkTextTheme,
    elevatedButtonTheme: AppButtonTheme.darkButtonTheme,
    inputDecorationTheme: AppTextFieldTheme.darkInputDecorationTheme

  );
}
