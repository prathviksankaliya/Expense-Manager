import 'package:expense_manager/app/core/utils/app_strings.dart';
import 'package:expense_manager/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 3500), () => Navigator.pushReplacementNamed(context, AppRoutes.onBoardingScreen));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Lottie.asset(AppStrings.logoAnimation, width: 280, height: 280, animate: true),
                Text(
                  AppStrings.appName,
                  style: Theme.of(context).textTheme.displayLarge,
                )
              ],
            )),
    );
  }
}
