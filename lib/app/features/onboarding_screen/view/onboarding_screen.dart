import 'package:expense_manager/app/core/utils/app_colors.dart';
import 'package:expense_manager/app/core/utils/app_fonts.dart';
import 'package:expense_manager/app/features/onboarding_screen/widgets/dot_indicators.dart';
import 'package:expense_manager/gen/assets.gen.dart';
import 'package:flutter/material.dart';

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
                style: AppFonts.semiBold(fontSize: 24),
              ),
              SizedBox(height: 12),
              Text(
                "Track every rupee and master your spending habits. \n Stay organized and make smarter financial decisions.",
                style: AppFonts.regular(fontSize: 13, color: AppColors.textSecondaryLight),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 32),
              DotIndicator(count: 3, activeIndex: 1, activeColor: AppColors.primaryDark,inactiveColor: AppColors.textPrimaryDark,),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Skip",
                        style: AppFonts.semiBold(color: AppColors.primaryDark),
                      )),
                  ElevatedButton.icon(
                    icon: Assets.icons.rightArrowOutline.svg(
                        width: 16,
                        height: 16,
                        colorFilter: ColorFilter.mode(
                          AppColors.primaryDark,
                          BlendMode.srcIn,
                        )),
                    iconAlignment: IconAlignment.end,
                    onPressed: () {},
                    style: ButtonStyle(
                        shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))), padding: WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 16))),
                    label: Text(
                      "Next",
                      style: AppFonts.semiBold(color: AppColors.primaryDark),
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
