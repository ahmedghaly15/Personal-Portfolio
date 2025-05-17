part of 'landing_cubit.dart';

enum LandingStatus {
  initial,
  selectTabNav,
  fetchDataLoading,
  fetchDataSuccess,
  fetchDataError,
}

class LandingState {
  final LandingStatus status;
  final int selectedTabNavIndex;
  final FetchDataResponse? data;
  final String? error;

  const LandingState({
    required this.status,
    this.selectedTabNavIndex = 0,
    this.data,
    this.error,
  });

  LandingState copyWith({
    LandingStatus? status,
    int? selectedTabNavIndex,
    FetchDataResponse? data,
    String? error,
  }) =>
      LandingState(
        status: status ?? this.status,
        selectedTabNavIndex: selectedTabNavIndex ?? this.selectedTabNavIndex,
        data: data ?? this.data,
        error: error ?? this.error,
      );

  factory LandingState.initial() =>
      const LandingState(status: LandingStatus.initial);
}
