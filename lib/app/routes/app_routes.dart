import 'package:expense_manager/app/features/dashboard_screen/cubit/dashboard_cubit.dart';
import 'package:expense_manager/app/features/dashboard_screen/view/dashboard_screen.dart';
import 'package:expense_manager/app/features/onboarding_screen/cubit/onboarding_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../features/onboarding_screen/view/onboarding_screen.dart';
import '../features/splash_screen/view/splash_screen.dart';

class AppRoutes {
  static const String splash = "/";
  static const String onBoardingScreen = "/onboarding";
  static const String dashboardScreen = "/dashboard";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return CupertinoPageRoute(builder: (_) => const SplashScreen());

      case onBoardingScreen:
        return CupertinoPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => OnboardingCubit(),
            child: OnboardingScreen(),
          ),
        );
      case dashboardScreen:
        return CupertinoPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => DashboardCubit(),
            child: DashboardScreen(),
          ),
        );

      default:
        return CupertinoPageRoute(
          builder: (_) => SplashScreen(),
        );
    }
  }
}
