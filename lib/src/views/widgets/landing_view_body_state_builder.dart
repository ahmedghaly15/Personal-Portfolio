import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../core/utils/app_assets.dart';
import '../../core/utils/functions/setup_service_locator.dart';
import '../../core/widgets/responsive_layout.dart';
import '../../models/fetch_data_response.dart';
import '../../view_model/landing_data_loader.dart';
import '../../view_model/landing_state.dart';
import 'custom_error_widget.dart';
import 'landing_view_desktop_layout.dart';
import 'landing_view_mobile_layout.dart';

class LandingViewBodyStateBuilder extends StatefulWidget {
  const LandingViewBodyStateBuilder({super.key});

  @override
  State<LandingViewBodyStateBuilder> createState() =>
      _LandingViewBodyStateBuilderState();
}

class _LandingViewBodyStateBuilderState extends State<LandingViewBodyStateBuilder> {
  late final LandingDataLoader _dataLoader;
  LandingViewState _state = const LandingViewState();

  @override
  void initState() {
    super.initState();
    _dataLoader = locator.get<LandingDataLoader>();
    _loadData();
  }

  Future<void> _loadData() async {
    setState(() {
      _state = _state.copyWith(
        dataState: LandingDataState.loading(payload: _state.dataState.payload),
      );
    });

    final nextDataState = await _dataLoader.fetchData();
    if (!mounted) {
      return;
    }

    setState(() {
      _state = _state.copyWith(dataState: nextDataState);
    });
  }

  void _selectTab(int index) {
    if (_state.selectedTabIndex == index) {
      return;
    }

    setState(() {
      _state = _state.copyWith(selectedTabIndex: index);
    });
  }

  @override
  Widget build(BuildContext context) {
    final dataState = _state.dataState;
    switch (dataState.status) {
      case LandingDataStatus.loading:
      case LandingDataStatus.initial:
        return Center(child: Lottie.asset(Assets.lottieLoadingAnimation));
      case LandingDataStatus.success:
        return _LandingViewResponsiveLayout(
          data: dataState.payload!,
          selectedTabNavIndex: _state.selectedTabIndex,
          onTabSelected: _selectTab,
        );
      case LandingDataStatus.error:
        return dataState.payload != null
            ? _LandingViewResponsiveLayout(
                data: dataState.payload!,
                selectedTabNavIndex: _state.selectedTabIndex,
                onTabSelected: _selectTab,
              )
            : const CustomErrorWidget();
    }
  }
}

class _LandingViewResponsiveLayout extends StatelessWidget {
  const _LandingViewResponsiveLayout({
    required this.data,
    required this.selectedTabNavIndex,
    required this.onTabSelected,
  });

  final FetchDataResponse data;
  final int selectedTabNavIndex;
  final ValueChanged<int> onTabSelected;

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileLayout: (_) => LandingViewMobileLayout(
        data: data,
        selectedTabNavIndex: selectedTabNavIndex,
        onTabSelected: onTabSelected,
      ),
      tabletLayout: (_) => LandingViewDesktopLayout(
        data: data,
        selectedTabNavIndex: selectedTabNavIndex,
        onTabSelected: onTabSelected,
        tabletProjectAspectRatio: 1 / 2,
        tabletApproachGridCrossAxisCount: 2,
      ),
      desktopLayout: (_) => LandingViewDesktopLayout(
        data: data,
        selectedTabNavIndex: selectedTabNavIndex,
        onTabSelected: onTabSelected,
      ),
    );
  }
}
