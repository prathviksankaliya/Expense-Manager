import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../core/enums/app_enums.dart';

part 'onboarding_event.dart';
part 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc() : super(OnboardingState.initial()) {
    on<SwipePageEvent>((event, emit) {
      state.currentPageIndex = event.pageIndex;
      emit(state.copy());
    });
  }
}
