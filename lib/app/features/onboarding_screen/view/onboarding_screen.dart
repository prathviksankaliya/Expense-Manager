import 'package:expense_manager/app/core/utils/app_colors.dart';
import 'package:expense_manager/app/core/utils/app_fonts.dart';
import 'package:expense_manager/app/data/common/bloc/theme_bloc/theme_bloc.dart';
import 'package:expense_manager/app/data/provider/data_provider.dart';
import 'package:expense_manager/app/features/onboarding_screen/models/onboarding_model.dart';
import 'package:expense_manager/app/features/onboarding_screen/widgets/dot_indicators.dart';
import 'package:expense_manager/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../bloc/onboarding_bloc.dart';

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
              Expanded(
                  child: PageView.builder(
                onPageChanged: (value) {
                  context.read<OnboardingBloc>().add(SwipePageEvent(value));
                },
                physics: BouncingScrollPhysics(),
                itemCount: DataProvider.onBoardingPageList.length,
                itemBuilder: (context, index) {
                  OnboardingModel model = DataProvider.onBoardingPageList[index];
                  return _onBoardingPage(context, model);
                },
              )),
              BlocBuilder<OnboardingBloc, OnboardingState>(
                builder: (context, state) {
                  return DotIndicator(
                    count: DataProvider.onBoardingPageList.length,
                    activeIndex: state.currentPageIndex,
                    activeColor: AppColors.primary,
                  );
                },
              ),
              SizedBox(
                height: 20,
              ),
              DropdownButton<ThemeMode>(
                value: context.watch<ThemeBloc>().state,
                onChanged: (newTheme) {
                  if (newTheme != null) {
                    context.read<ThemeBloc>().add(ChangeTheme(newTheme));
                  }
                },
                items: const [
                  DropdownMenuItem(
                    value: ThemeMode.system,
                    child: Text("System Default"),
                  ),
                  DropdownMenuItem(
                    value: ThemeMode.light,
                    child: Text("Light Mode"),
                  ),
                  DropdownMenuItem(
                    value: ThemeMode.dark,
                    child: Text("Dark Mode"),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Skip",
                        style: AppFonts.semiBold(color: AppColors.primary),
                      )),
                  TextButton.icon(
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

  Widget _onBoardingPage(BuildContext context, OnboardingModel model) => Column(
        children: [
          SvgPicture.asset(model.svgPath),
          Text(
            model.title,
            style: Theme.of(context).textTheme.displaySmall,
          ),
          SizedBox(height: 12),
          Text(
            model.tagline,
            style: Theme.of(context).textTheme.titleSmall,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 32),
        ],
      );
}
