import 'package:bloc/bloc.dart';
part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingState.initial());

  void swipePage(int pageIndex) {
    state.currentPageIndex = pageIndex;
    emit(state.copy());
  }
}