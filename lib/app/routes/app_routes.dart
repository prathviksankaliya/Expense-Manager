import 'package:expense_manager/app/features/onboarding_screen/view/onboarding_screen.dart';
import 'package:flutter/material.dart';

import '../features/splash_screen/view/splash_screen.dart';

class AppRoutes {
  static const String splash = "/";
  static const String onBoardingScreen = "/onboarding";

  static Map<String, Widget Function(BuildContext)> appRoutes = {
    splash: (context) => const SplashScreen(),
    onBoardingScreen: (context) => const OnboardingScreen(),
  };
}
