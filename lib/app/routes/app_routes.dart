import 'package:flutter/material.dart';

import '../features/splash_screen/view/splash_screen.dart';

class AppRoutes {
  static const String splash = "/";

  static Map<String, Widget Function(BuildContext)> appRoutes = {
    splash: (context) => const ThemeTestScreen(),
  };
}
