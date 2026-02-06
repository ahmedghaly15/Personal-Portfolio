import 'package:jaspr/jaspr.dart';

class ExperienceViewModel {
  const ExperienceViewModel({
    required this.role,
    required this.company,
    required this.period,
    required this.summary,
  });

  final String role;
  final String company;
  final String period;
  final String summary;
}

class ExperienceItem extends StatelessComponent {
  const ExperienceItem({super.key, required this.experience});

  final ExperienceViewModel experience;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield article([
      h3([text(experience.role)]),
      p([text('${experience.company} · ${experience.period}')]),
      p([text(experience.summary)], classes: 'section-copy'),
    ], classes: 'experience-card');
  }
}
