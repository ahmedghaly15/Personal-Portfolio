part of 'landing_cubit.dart';

enum LandingStatus {
  initial,
  selectTabNav,
}

class LandingState {
  final LandingStatus status;
  final int selectedTabNavIndex;

  const LandingState({
    required this.status,
    this.selectedTabNavIndex = 0,
  });

  LandingState copyWith({
    LandingStatus? status,
    int? selectedTabNavIndex,
  }) =>
      LandingState(
        status: status ?? this.status,
        selectedTabNavIndex: selectedTabNavIndex ?? this.selectedTabNavIndex,
      );

  factory LandingState.initial() =>
      const LandingState(status: LandingStatus.initial);
}
