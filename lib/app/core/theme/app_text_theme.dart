import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

class AppTextTheme {

  static TextTheme lightTextTheme = TextTheme(
    displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: AppColors.textPrimaryLight),
    displayMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.w600, color: AppColors.textPrimaryLight),
    displaySmall: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: AppColors.textPrimaryLight),

    headlineLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: AppColors.textPrimaryLight),
    headlineMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: AppColors.textPrimaryLight),
    headlineSmall: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.textSecondaryLight),

    titleLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: AppColors.textPrimaryLight),
    titleMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.textSecondaryLight),
    titleSmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.textSecondaryLight),

    bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.textPrimaryLight),
    bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.textSecondaryLight),
    bodySmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.textSecondaryLight),

    labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.textPrimaryLight),
    labelMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppColors.textSecondaryLight),
    labelSmall: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: AppColors.textSecondaryLight),
  );

  static TextTheme darkTextTheme = TextTheme(
    displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: AppColors.textPrimaryDark),
    displayMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.w600, color: AppColors.textPrimaryDark),
    displaySmall: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: AppColors.textPrimaryDark),

    headlineLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: AppColors.textPrimaryDark),
    headlineMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: AppColors.textPrimaryDark),
    headlineSmall: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.textSecondaryDark),

    titleLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: AppColors.textPrimaryDark),
    titleMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.textSecondaryDark),
    titleSmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color:AppColors.textSecondaryDark),

    bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.textPrimaryDark),
    bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.textSecondaryDark),
    bodySmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.textSecondaryDark),

    labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.textPrimaryDark),
    labelMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppColors.textSecondaryDark),
    labelSmall: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: AppColors.textSecondaryDark),
  );
}
