import 'package:jaspr/jaspr.dart';

import 'experience_item.dart';
import 'project_item.dart';

class LandingViewMobileAboutTab extends StatelessComponent {
  const LandingViewMobileAboutTab({
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
      div([
        ...experiences.map((item) => ExperienceItem(experience: item)),
        ...featuredProjects.map((item) => ProjectItem(project: item)),
      ], classes: 'cards-grid'),
    ], classes: 'shell-card');
  }
}
