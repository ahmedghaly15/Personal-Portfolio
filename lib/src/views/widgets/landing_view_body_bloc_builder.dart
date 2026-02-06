import 'dart:async';

import 'package:jaspr/jaspr.dart';

import 'contact_me_section.dart';
import 'experience_item.dart';
import 'landing_view_desktop_about_tab.dart';
import 'landing_view_desktop_portfolio_tab.dart';
import 'landing_view_desktop_skills_tab.dart';
import 'project_item.dart';
import 'tabs_nav.dart';

enum LandingDataStatus { loading, success, error }

class LandingViewBodyBlocBuilder extends StatefulComponent {
  const LandingViewBodyBlocBuilder({super.key});

  @override
  State<StatefulComponent> createState() => _LandingViewBodyBlocBuilderState();
}

class _LandingViewBodyBlocBuilderState extends State<LandingViewBodyBlocBuilder> {
  LandingDataStatus _status = LandingDataStatus.loading;
  int _selectedTabIndex = 0;
  String? _error;
  _LandingData? _data;

  @override
  void initState() {
    super.initState();
    unawaited(_loadData());
  }

  Future<void> _loadData() async {
    setState(() {
      _status = LandingDataStatus.loading;
      _error = null;
    });

    try {
      await Future<void>.delayed(const Duration(milliseconds: 450));
      _data = _LandingData.sample();
      setState(() => _status = LandingDataStatus.success);
    } catch (_) {
      setState(() {
        _status = LandingDataStatus.error;
        _error = 'Unable to load portfolio sections.';
      });
    }
  }

  @override
  Iterable<Component> build(BuildContext context) sync* {
    if (_status == LandingDataStatus.loading) {
      yield section([
        h2([text('Loading portfolio...')]),
        p([text('Fetching About, Skills, Portfolio and Contact sections.')],
            classes: 'section-copy'),
      ], classes: 'shell-card');
      return;
    }

    if (_status == LandingDataStatus.error) {
      yield section([
        h2([text('Something went wrong')]),
        p([text(_error ?? 'Please retry.')], classes: 'section-copy'),
        button([text('Retry')], events: {'click': (_) => unawaited(_loadData())}),
      ], classes: 'shell-card');
      return;
    }

    final data = _data!;
    yield TabsNav(
      tabs: const ['About', 'Skills', 'Portfolio', 'Contact'],
      selectedTabIndex: _selectedTabIndex,
      onTabSelected: (index) => setState(() => _selectedTabIndex = index),
    );

    if (_selectedTabIndex == 0) {
      yield LandingViewDesktopAboutTab(
        headline: data.aboutHeadline,
        description: data.aboutDescription,
        experiences: data.experiences,
        featuredProjects: data.projects.take(2).toList(),
      );
    } else if (_selectedTabIndex == 1) {
      yield LandingViewDesktopSkillsTab(title: data.skillsTitle, skills: data.skills);
    } else if (_selectedTabIndex == 2) {
      yield LandingViewDesktopPortfolioTab(projects: data.projects);
    } else {
      yield const ContactMeSection();
    }
  }
}

class _LandingData {
  const _LandingData({
    required this.aboutHeadline,
    required this.aboutDescription,
    required this.skillsTitle,
    required this.skills,
    required this.projects,
    required this.experiences,
  });

  final String aboutHeadline;
  final String aboutDescription;
  final String skillsTitle;
  final List<SkillViewModel> skills;
  final List<ProjectViewModel> projects;
  final List<ExperienceViewModel> experiences;

  factory _LandingData.sample() => const _LandingData(
        aboutHeadline: 'Transforming concepts into seamless user experiences',
        aboutDescription:
            'Flutter-focused engineer passionate about high quality cross-platform products, maintainable architecture, and thoughtful UI/UX details.',
        skillsTitle: 'Mastering the art of Flutter development',
        skills: [
          SkillViewModel(name: 'Flutter', percent: 93),
          SkillViewModel(name: 'Dart', percent: 91),
          SkillViewModel(name: 'Firebase', percent: 84),
          SkillViewModel(name: 'REST APIs', percent: 87),
        ],
        projects: [
          ProjectViewModel(
            title: 'TaskFlow',
            description: 'A productivity app with advanced reminders and offline sync support.',
            promoLink: 'https://example.com/taskflow',
            gitHubLink: 'https://github.com/ahmedghaly15',
          ),
          ProjectViewModel(
            title: 'Coach AI',
            description:
                'AI-assisted fitness and habit tracking app with personalized recommendations.',
            promoLink: 'https://example.com/coachai',
            gitHubLink: 'https://github.com/ahmedghaly15',
          ),
          ProjectViewModel(
            title: 'Finlytics',
            description:
                'Personal finance dashboard with expense predictions and smart categorization.',
            promoLink: 'https://example.com/finlytics',
          ),
        ],
        experiences: [
          ExperienceViewModel(
            role: 'Flutter Developer Intern',
            company: 'CloudX',
            period: '2024',
            summary:
                'Developed AI-powered mobile features, collaborated in agile sprints, and improved app performance.',
          ),
          ExperienceViewModel(
            role: 'Freelance Mobile Developer',
            company: 'Self-employed',
            period: '2023 - Present',
            summary:
                'Built and delivered production-ready mobile apps with clean architecture and responsive UIs.',
          ),
        ],
      );
}
