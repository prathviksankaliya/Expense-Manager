import 'package:expense_manager/app/core/common/common_functions.dart';
import 'package:expense_manager/app/core/utils/app_colors.dart';
import 'package:expense_manager/app/core/utils/app_fonts.dart';
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
  bool isRemove = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () => Navigator.pushNamed(context, AppRoutes.onBoardingScreen));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isRemove
          ? Container()
          : Center(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Lottie.asset(AppStrings.logoAnimation, width: 280, height: 280, animate: true),
                Text(
                  AppStrings.appName,
                  style: AppFonts.semiBold(fontSize: 32),
                )
              ],
            )),
    );
  }
}
