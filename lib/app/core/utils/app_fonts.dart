import 'package:flutter/material.dart';

class AppFonts {
  static late ThemeData _theme; // Store the current theme

  // Initialize the theme once when the app starts
  static void init(ThemeData theme) {
    _theme = theme;
  }

  static TextStyle _baseStyle({
    required double fontSize,
    FontWeight fontWeight = FontWeight.normal,
    FontStyle fontStyle = FontStyle.normal,
    Color? color, // Allow custom color
  }) {
    return TextStyle(
      fontFamily: 'Poppins',
      color: color ?? _theme.textTheme.bodyLarge?.color ?? Colors.black, // Use custom or theme color
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  // Regular Text Style (Default Text)
  static TextStyle regular({double fontSize = 14.0, Color? color}) {
    return _baseStyle(fontSize: fontSize, fontWeight: FontWeight.normal, color: color);
  }

  // Medium Text Style
  static TextStyle medium({double fontSize = 14.0, Color? color}) {
    return _baseStyle(fontSize: fontSize, fontWeight: FontWeight.w500, color: color);
  }

  // SemiBold Text Style
  static TextStyle semiBold({double fontSize = 14.0, Color? color}) {
    return _baseStyle(fontSize: fontSize, fontWeight: FontWeight.w600, color: color);
  }

  // Bold Text Style
  static TextStyle bold({double fontSize = 14.0, Color? color}) {
    return _baseStyle(fontSize: fontSize, fontWeight: FontWeight.bold, color: color);
  }

  // Heading1 Text Style (For Large Titles)
  static TextStyle heading1({double fontSize = 24.0, Color? color}) {
    return _baseStyle(fontSize: fontSize, fontWeight: FontWeight.bold, color: color);
  }

  // Body Text Style
  static TextStyle bodyText({double fontSize = 16.0, Color? color}) {
    return _baseStyle(fontSize: fontSize, color: color);
  }

  // Secondary Text (Faded or Less Important Text)
  static TextStyle secondaryText({double fontSize = 14.0}) {
    return _baseStyle(
      fontSize: fontSize,
      color: _theme.textTheme.bodyMedium?.color ?? Colors.grey, // Use theme-based secondary text color
    );
  }

  // Error Text Style
  static TextStyle errorText({double fontSize = 14.0}) {
    return _baseStyle(
      fontSize: fontSize,
      color: _theme.colorScheme.error, // Use theme's error color
    );
  }
}
