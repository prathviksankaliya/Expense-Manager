import 'package:expense_manager/app/core/utils/app_colors.dart';
import 'package:expense_manager/app/core/utils/app_strings.dart';
import 'package:expense_manager/app/data/provider/data_provider.dart';
import 'package:expense_manager/app/features/onboarding_screen/cubit/onboarding_cubit.dart';
import 'package:expense_manager/app/features/onboarding_screen/models/onboarding_model.dart';
import 'package:expense_manager/app/features/onboarding_screen/widgets/dot_indicators.dart';
import 'package:expense_manager/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                  context.read<OnboardingCubit>().swipePage(value);
                },
                physics: BouncingScrollPhysics(),
                itemCount: DataProvider.onBoardingPageList.length,
                itemBuilder: (pageContext, index) {
                  OnboardingModel model = DataProvider.onBoardingPageList[index];
                  return _onBoardingPage(context, model);
                },
              )),
              SizedBox(
                height: 30,
              ),
              BlocBuilder<OnboardingCubit, OnboardingState>(
                builder: (context, state) {
                  return DotIndicator(
                    count: DataProvider.onBoardingPageList.length,
                    activeIndex: state.currentPageIndex,
                    activeColor: AppColors.primary,
                  );
                },
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Navigator.pushReplacementNamed(context, AppRoutes.dashboardScreen),
                    child: Text(AppStrings.letsGo),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Widget _onBoardingPage(BuildContext context, OnboardingModel model) => Column(
        children: [
          SvgPicture.asset(
            model.svgPath,
            height: MediaQuery.sizeOf(context).height * .6,
          ),
          SizedBox(height: 16),
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
