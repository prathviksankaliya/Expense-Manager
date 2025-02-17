part of 'onboarding_cubit.dart';

class OnboardingState {
  int currentPageIndex;

  OnboardingState({required this.currentPageIndex});

  static OnboardingState initial() => OnboardingState(currentPageIndex: 0);

  OnboardingState copy() {
    return OnboardingState(currentPageIndex: currentPageIndex);
  }
}
