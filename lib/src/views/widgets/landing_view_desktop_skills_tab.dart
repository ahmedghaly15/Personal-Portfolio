import 'package:jaspr/jaspr.dart';

class SkillViewModel {
  const SkillViewModel({required this.name, required this.percent});

  final String name;
  final int percent;
}

class LandingViewDesktopSkillsTab extends StatelessComponent {
  const LandingViewDesktopSkillsTab({
    super.key,
    required this.title,
    required this.skills,
  });

  final String title;
  final List<SkillViewModel> skills;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield section([
      p([text('Skills')], classes: 'section-subtitle'),
      h2([text(title)], classes: 'section-title'),
      ...skills.map(
        (skill) => div([
          p([text('${skill.name} · ${skill.percent}%')]),
          div([
            div([], classes: 'skill-fill', attributes: {'style': 'width: ${skill.percent}%'}),
          ], classes: 'skill-track'),
        ], classes: 'skill'),
      ),
    ], classes: 'shell-card');
  }
}
