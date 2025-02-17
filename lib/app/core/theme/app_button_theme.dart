import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

class AppButtonTheme {
  /// Light Theme Button Style
  static final ElevatedButtonThemeData lightButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primary, // Teal
      foregroundColor: Colors.white, // Text color
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8), // Rounded corners
      ),
      elevation: 6, // Increased shadow depth
      shadowColor: AppColors.primary.withOpacity(0.4), // Soft teal shadow
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
    ),
  );

  /// Dark Theme Button Style
  static final ElevatedButtonThemeData darkButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.white, // Bright Teal
      foregroundColor: AppColors.primary, // Text color
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      elevation: 6, // Increased shadow depth
      shadowColor: Colors.black.withOpacity(0.3), // Softer black shadow for contrast
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
    ),
  );
}
