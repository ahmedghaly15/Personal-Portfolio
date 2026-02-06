import 'package:flutter/foundation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../core/helpers/environment_helper.dart';
import '../core/utils/const_strings.dart';
import '../models/fetch_data_response.dart';
import 'landing_state.dart';

class LandingDataLoader {
  LandingDataLoader(this._supabaseClient);

  final SupabaseClient _supabaseClient;

  Future<LandingDataState> fetchData() async {
    try {
      final jsonData = await _supabaseClient
          .from(ConstStrings.dataTable)
          .select()
          .eq(
            'user_id',
            EnvironmentHelper.getEnvironmentVariable(ConstStrings.myIdKey)!,
          )
          .single();

      return LandingDataState.success(FetchDataResponse.fromJson(jsonData));
    } catch (error) {
      debugPrint('ERROR: $error');
      return LandingDataState.error(
        errorMessage: 'Something went wrong. Please try again later.',
      );
    }
  }
}
