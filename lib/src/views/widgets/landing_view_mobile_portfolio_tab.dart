import 'package:jaspr/jaspr.dart';

import 'landing_view_desktop_portfolio_tab.dart';
import 'project_item.dart';

class LandingViewMobilePortfolioTab extends StatelessComponent {
  const LandingViewMobilePortfolioTab({
    super.key,
    required this.projects,
  });

  final List<ProjectViewModel> projects;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield LandingViewDesktopPortfolioTab(projects: projects);
  }
}
