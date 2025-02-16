import 'package:expense_manager/app/core/utils/app_colors.dart';
import 'package:expense_manager/app/core/utils/app_fonts.dart';
import 'package:expense_manager/app/features/onboarding_screen/widgets/dot_indicators.dart';
import 'package:expense_manager/gen/assets.gen.dart';
import 'package:flutter/material.dart';

import '../../../core/theme/app_theme.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Assets.svgs.settingMan.svg(),
              Text(
                "Shape Your Financial Destiny",
                style: AppTheme.textTheme.displaySmall,
              ),
              SizedBox(height: 12),
              Text(
                "Track every rupee and master your spending habits. \n Stay organized and make smarter financial decisions.",
                style: AppTheme.textTheme.titleSmall,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 32),
              DotIndicator(count: 3, activeIndex: 1, activeColor: AppColors.primary,),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Skip",
                        style: AppFonts.semiBold(color: AppColors.primary),
                      )),
                  ElevatedButton.icon(
                    icon: Assets.icons.rightArrowOutline.svg(
                        width: 16,
                        height: 16,
                        colorFilter: ColorFilter.mode(
                          AppColors.primary,
                          BlendMode.srcIn,
                        )),
                    iconAlignment: IconAlignment.end,
                    onPressed: () {},
                    style: ButtonStyle(
                        shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))), padding: WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 16))),
                    label: Text(
                      "Next",
                      style: AppFonts.semiBold(color: AppColors.primary),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}