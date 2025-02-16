part of 'onboarding_bloc.dart';

@immutable
sealed class OnboardingEvent {}

final class SwipePageEvent extends OnboardingEvent {
  final int pageIndex;

  SwipePageEvent(this.pageIndex);
}