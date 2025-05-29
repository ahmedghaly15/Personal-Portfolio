import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../core/utils/const_strings.dart';
import '../core/helpers/environment_helper.dart';
import '../models/fetch_data_response.dart';

part 'landing_state.dart';

class LandingCubit extends Cubit<LandingState> {
  final SupabaseClient _supabaseClient;

  LandingCubit(this._supabaseClient) : super(LandingState.initial());

  void selectTabNav(int index) {
    if (state.selectedTabNavIndex != index) {
      emit(state.copyWith(
        status: LandingStatus.selectTabNav,
        selectedTabNavIndex: index,
      ));
    }
  }

  void fetchData() async {
    emit(state.copyWith(
      status: LandingStatus.fetchDataLoading,
    ));
    try {
      final FetchDataResponse data = await _fetchRemoteData();
      emit(state.copyWith(
        status: LandingStatus.fetchDataSuccess,
        data: data,
      ));
    } catch (e) {
      debugPrint('ERROR: ${e.toString()}');
      emit(state.copyWith(
        status: LandingStatus.fetchDataError,
        error: "Something went wrong. Please try again later.",
      ));
    }
  }

  Future<FetchDataResponse> _fetchRemoteData() async {
    final jsonData = await _supabaseClient
        .from(ConstStrings.dataTable)
        .select()
        .eq('user_id',
            EnvironmentHelper.getEnvironmentVariable(ConstStrings.myIdKey)!)
        .single();
    return FetchDataResponse.fromJson(jsonData);
  }
}
