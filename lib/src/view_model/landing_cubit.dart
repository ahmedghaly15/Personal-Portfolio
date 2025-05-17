import 'package:flutter_bloc/flutter_bloc.dart';

part 'landing_state.dart';

class LandingCubit extends Cubit<LandingState> {
  LandingCubit() : super(LandingState.initial());

  void selectTabNav(int index) {
    if (state.selectedTabNavIndex != index) {
      emit(state.copyWith(
        status: LandingStatus.selectTabNav,
        selectedTabNavIndex: index,
      ));
    }
  }
}
