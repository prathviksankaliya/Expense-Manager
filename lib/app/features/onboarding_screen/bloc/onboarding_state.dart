part of 'onboarding_bloc.dart';

class OnboardingState {
  ActiveStatus activeStatus;
  String? errorMessage;
  bool isLoading;
  int currentPageIndex;

  OnboardingState({
    required this.activeStatus,
    this.isLoading = false,
    this.errorMessage,
    required this.currentPageIndex,
  });

  static OnboardingState initial() => OnboardingState(
        activeStatus: ActiveStatus.loaded,
        currentPageIndex: 0,
      );

  OnboardingState copy() {
    return OnboardingState(
      activeStatus: activeStatus,
      isLoading: isLoading,
      currentPageIndex: currentPageIndex,
    );
  }
}
