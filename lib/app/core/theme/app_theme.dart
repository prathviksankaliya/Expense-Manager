import 'package:expense_manager/app/core/theme/app_button_theme.dart';
import 'package:expense_manager/app/core/theme/app_text_theme.dart';
import 'package:expense_manager/app/core/theme/app_textfield_theme.dart';
import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

class AppTheme {

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
      inputDecorationTheme: AppTextFieldTheme.darkInputDecorationTheme);
}
