import '../models/fetch_data_response.dart';

enum LandingDataStatus { initial, loading, success, error }

class LandingDataState {
  const LandingDataState({
    required this.status,
    this.payload,
    this.errorMessage,
  });

  final LandingDataStatus status;
  final FetchDataResponse? payload;
  final String? errorMessage;

  bool get isLoading => status == LandingDataStatus.loading;

  factory LandingDataState.initial() =>
      const LandingDataState(status: LandingDataStatus.initial);

  factory LandingDataState.loading({FetchDataResponse? payload}) =>
      LandingDataState(status: LandingDataStatus.loading, payload: payload);

  factory LandingDataState.success(FetchDataResponse payload) =>
      LandingDataState(status: LandingDataStatus.success, payload: payload);

  factory LandingDataState.error({
    required String errorMessage,
    FetchDataResponse? payload,
  }) =>
      LandingDataState(
        status: LandingDataStatus.error,
        payload: payload,
        errorMessage: errorMessage,
      );
}

class LandingViewState {
  const LandingViewState({
    this.selectedTabIndex = 0,
    this.dataState = const LandingDataState(status: LandingDataStatus.initial),
  });

  final int selectedTabIndex;
  final LandingDataState dataState;

  LandingViewState copyWith({
    int? selectedTabIndex,
    LandingDataState? dataState,
  }) {
    return LandingViewState(
      selectedTabIndex: selectedTabIndex ?? this.selectedTabIndex,
      dataState: dataState ?? this.dataState,
    );
  }
}
