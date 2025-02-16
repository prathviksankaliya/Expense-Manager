import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/common/bloc/theme_bloc/theme_bloc.dart';
import '../features/onboarding_screen/bloc/onboarding_bloc.dart';
import '../features/onboarding_screen/view/onboarding_screen.dart';
import '../features/splash_screen/view/splash_screen.dart';

class AppRoutes {
  static const String splash = "/";
  static const String onBoardingScreen = "/onboarding";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case onBoardingScreen:
        return MaterialPageRoute(
          builder: (context) => MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => OnboardingBloc()),
              BlocProvider.value(value: context.read<ThemeBloc>()),
            ],
            child: const OnboardingScreen(),
          ),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => SplashScreen(),
        );
    }
  }
}
