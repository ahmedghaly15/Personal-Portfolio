import '../data/portfolio_repository.dart';
import 'landing_state.dart';

class LandingDataLoader {
  LandingDataLoader(this._portfolioRepository);

  final PortfolioRepository _portfolioRepository;

  Future<LandingDataState> fetchData() async {
    try {
      final payload = await _portfolioRepository.fetchPortfolioData();
      return LandingDataState.success(payload);
    } catch (error) {
      print('ERROR: $error');
      return LandingDataState.error(
        errorMessage: 'Something went wrong. Please try again later.',
      );
    }
  }
}
