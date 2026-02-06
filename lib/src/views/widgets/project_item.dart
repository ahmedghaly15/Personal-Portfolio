import 'package:jaspr/jaspr.dart';

class ProjectViewModel {
  const ProjectViewModel({
    required this.title,
    required this.description,
    this.promoLink,
    this.gitHubLink,
  });

  final String title;
  final String description;
  final String? promoLink;
  final String? gitHubLink;
}

class ProjectItem extends StatelessComponent {
  const ProjectItem({super.key, required this.project});

  final ProjectViewModel project;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield article([
      h3([text(project.title)]),
      p([text(project.description)], classes: 'section-copy'),
      div([
        if (project.promoLink != null)
          a([text('Live demo')],
              href: project.promoLink, target: Target.blank, classes: 'cta-btn'),
        if (project.gitHubLink != null)
          a([text('GitHub')],
              href: project.gitHubLink, target: Target.blank, classes: 'cta-btn'),
      ], classes: 'contact-actions'),
    ], classes: 'project-card');
  }
}
