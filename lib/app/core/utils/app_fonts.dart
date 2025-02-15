import 'package:flutter/material.dart';

class AppFonts {
  static TextStyle _baseStyle({
    required Color color,
    required double fontSize,
    FontWeight fontWeight = FontWeight.normal,
    FontStyle fontStyle = FontStyle.normal,
  }) {
    return TextStyle(
      fontFamily: 'Poppins',
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  // Regular Text Style
  static TextStyle regular({required Color color, double fontSize = 14.0}) {
    return _baseStyle(
        color: color, fontSize: fontSize, fontWeight: FontWeight.normal);
  }

  // Medium Text Style
  static TextStyle medium({required Color color, double fontSize = 14.0}) {
    return _baseStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.w500
    );
  }

  // SemiBold Text Style
  static TextStyle semiBold({required Color color, double fontSize = 14.0}) {
    return _baseStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.w600 // SemiBold weight
    );
  }

  // Bold Text Style
  static TextStyle bold({required Color color, double fontSize = 14.0}) {
    return _baseStyle(
        color: color, fontSize: fontSize, fontWeight: FontWeight.bold);
  }

  static TextStyle heading1(
      {Color color = Colors.black, double fontSize = 24.0}) {
    return _baseStyle(
        color: color, fontSize: fontSize, fontWeight: FontWeight.bold);
  }

  static TextStyle bodyText(
      {Color color = Colors.black, double fontSize = 16.0}) {
    return _baseStyle(
      color: color,
      fontSize: fontSize,
    );
  }
}
