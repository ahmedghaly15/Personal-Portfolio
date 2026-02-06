import 'package:jaspr/jaspr.dart';

import 'project_item.dart';

class LandingViewDesktopPortfolioTab extends StatelessComponent {
  const LandingViewDesktopPortfolioTab({
    super.key,
    required this.projects,
  });

  final List<ProjectViewModel> projects;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield section([
      p([text('Portfolio')], classes: 'section-subtitle'),
      h2([text('Recent projects and product work')], classes: 'section-title'),
      div([
        ...projects.map((project) => ProjectItem(project: project)),
      ], classes: 'cards-grid'),
    ], classes: 'shell-card');
  }
}
