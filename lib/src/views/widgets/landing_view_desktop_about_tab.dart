import 'package:jaspr/jaspr.dart';

import 'experience_item.dart';
import 'project_item.dart';

class LandingViewDesktopAboutTab extends StatelessComponent {
  const LandingViewDesktopAboutTab({
    super.key,
    required this.headline,
    required this.description,
    required this.experiences,
    required this.featuredProjects,
  });

  final String headline;
  final String description;
  final List<ExperienceViewModel> experiences;
  final List<ProjectViewModel> featuredProjects;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield section([
      p([text('About')], classes: 'section-subtitle'),
      h2([text(headline)], classes: 'section-title'),
      p([text(description)], classes: 'section-copy'),
      h3([text('Experience')]),
      div([
        ...experiences.map((item) => ExperienceItem(experience: item)),
      ], classes: 'cards-grid'),
      h3([text('Featured projects')]),
      div([
        ...featuredProjects.map((item) => ProjectItem(project: item)),
      ], classes: 'cards-grid'),
    ], classes: 'shell-card');
  }
}
