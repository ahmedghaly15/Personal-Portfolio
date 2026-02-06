import 'package:supabase/supabase.dart';

import '../core/helpers/environment_helper.dart';
import '../core/utils/const_strings.dart';
import '../models/fetch_data_response.dart';

class PortfolioRepository {
  PortfolioRepository(this._supabaseClient);

  final SupabaseClient _supabaseClient;

  Future<FetchDataResponse> fetchPortfolioData() async {
    final jsonData = await _supabaseClient
        .from(ConstStrings.dataTable)
        .select()
        .eq(
          'user_id',
          EnvironmentHelper.requiredEnvironmentVariable(ConstStrings.myIdKey),
        )
        .single();

    return FetchDataResponse.fromJson(jsonData);
  }
}
