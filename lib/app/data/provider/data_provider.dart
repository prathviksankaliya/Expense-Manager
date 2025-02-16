import 'package:expense_manager/app/core/utils/app_strings.dart';
import 'package:expense_manager/app/features/onboarding_screen/models/onboarding_model.dart';
import 'package:expense_manager/gen/assets.gen.dart';

class DataProvider {
  static List<OnboardingModel> onBoardingPageList = [
    OnboardingModel(Assets.svgs.settingMan.path, AppStrings.pageOneTitle, AppStrings.pageOneTagline),
    OnboardingModel(Assets.svgs.goals.path, AppStrings.pageTwoTitle, AppStrings.pageTwoTagline),
    OnboardingModel(Assets.svgs.chart.path, AppStrings.pageThreeTitle, AppStrings.pageThreeTagline),
  ];
}
