import 'package:jaspr/jaspr.dart';

import 'landing_view_desktop_skills_tab.dart';

class LandingViewMobileSkillsTab extends StatelessComponent {
  const LandingViewMobileSkillsTab({
    super.key,
    required this.title,
    required this.skills,
  });

  final String title;
  final List<SkillViewModel> skills;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield LandingViewDesktopSkillsTab(title: title, skills: skills);
  }
}
