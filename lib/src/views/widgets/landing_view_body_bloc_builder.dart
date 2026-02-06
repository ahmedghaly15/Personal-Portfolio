import 'dart:async';

import 'package:jaspr/jaspr.dart';

import '../../core/utils/functions/setup_service_locator.dart';
import '../../models/about.dart';
import '../../models/fetch_data_response.dart';
import '../../models/skill_tab_model.dart';
import '../../view_model/landing_data_loader.dart';
import '../../view_model/landing_state.dart';
import 'contact_me_section.dart';
import 'experience_item.dart';
import 'landing_view_desktop_about_tab.dart';
import 'landing_view_desktop_portfolio_tab.dart';
import 'landing_view_desktop_skills_tab.dart';
import 'project_item.dart';
import 'tabs_nav.dart';

class LandingViewBodyBlocBuilder extends StatefulComponent {
  const LandingViewBodyBlocBuilder({super.key});

  @override
  State<StatefulComponent> createState() => _LandingViewBodyBlocBuilderState();
}

class _LandingViewBodyBlocBuilderState extends State<LandingViewBodyBlocBuilder> {
  late final LandingDataLoader _dataLoader;
  LandingViewState _state = const LandingViewState();

  @override
  void initState() {
    super.initState();
    _dataLoader = locator.get<LandingDataLoader>();
    unawaited(_loadData());
  }

  Future<void> _loadData() async {
    setState(() {
      _state = _state.copyWith(
        dataState: LandingDataState.loading(payload: _state.dataState.payload),
      );
    });

    final nextDataState = await _dataLoader.fetchData();
    setState(() {
      _state = _state.copyWith(dataState: nextDataState);
    });
  }

  @override
  Iterable<Component> build(BuildContext context) sync* {
    final dataState = _state.dataState;

    if (dataState.status == LandingDataStatus.loading ||
        dataState.status == LandingDataStatus.initial) {
      yield section([
        h2([text('Loading portfolio...')]),
        p([text('Fetching About, Skills, Portfolio and Contact sections.')],
            classes: 'section-copy'),
      ], classes: 'shell-card');
      return;
    }

    if (dataState.status == LandingDataStatus.error && dataState.payload == null) {
      yield section([
        h2([text('Something went wrong')]),
        p([text(dataState.errorMessage ?? 'Please retry.')], classes: 'section-copy'),
        button([text('Retry')], events: {'click': (_) => unawaited(_loadData())}),
      ], classes: 'shell-card');
      return;
    }

    final data = dataState.payload!;

    yield TabsNav(
      tabs: const ['About', 'Skills', 'Portfolio', 'Contact'],
      selectedTabIndex: _state.selectedTabIndex,
      onTabSelected: (index) {
        setState(() {
          _state = _state.copyWith(selectedTabIndex: index);
        });
      },
    );

    if (_state.selectedTabIndex == 0) {
      yield LandingViewDesktopAboutTab(
        headline: _aboutHeadline(data.about.headerBigText),
        description: data.about.description,
        experiences: data.about.workExperience.map(_mapExperience).toList(),
        featuredProjects: data.about.projects.map(_mapProject).toList(),
      );
    } else if (_state.selectedTabIndex == 1) {
      yield LandingViewDesktopSkillsTab(
        title: _skillsHeadline(data.skills.headerBigText),
        skills: data.skills.skills.map(_mapSkill).toList(),
      );
    } else if (_state.selectedTabIndex == 2) {
      yield LandingViewDesktopPortfolioTab(
        projects: data.portfolio.map(_mapProject).toList(),
      );
    } else {
      yield const ContactMeSection();
    }
  }

  String _aboutHeadline(AboutHeaderTextModel headline) {
    return '${headline.text1} ${headline.coloredString} ${headline.text2}'.trim();
  }

  String _skillsHeadline(SkillHeaderTextModel headline) {
    return '${headline.text1} ${headline.colorfulString} ${headline.text3}'.trim();
  }

  ExperienceViewModel _mapExperience(WorkExperienceModel experience) {
    return ExperienceViewModel(
      role: experience.title,
      company: experience.company,
      period: '${experience.startDate} - ${experience.endDate}',
      summary: experience.description,
    );
  }

  ProjectViewModel _mapProject(Project project) {
    return ProjectViewModel(
      title: project.title,
      description: project.description,
      promoLink: project.promoLink,
      gitHubLink: project.gitHubLink,
    );
  }

  SkillViewModel _mapSkill(SkillModel skill) {
    return SkillViewModel(name: skill.name, percent: skill.percentage.round());
  }
}
