import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import '../../core/utils/app_assets.dart';
import '../../core/widgets/responsive_layout.dart';
import '../../models/fetch_data_response.dart';
import '../../view_model/landing_cubit.dart';
import 'custom_error_widget.dart';
import 'landing_view_desktop_layout.dart';
import 'landing_view_mobile_layout.dart';

class LandingViewBodyBlocBuilder extends StatelessWidget {
  const LandingViewBodyBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LandingCubit, LandingState>(
      buildWhen: (_, current) => _buildWhen(current.status),
      builder: (_, state) {
        switch (state.status) {
          case LandingStatus.fetchDataLoading:
            return Center(child: Lottie.asset(Assets.lottieLoadingAnimation));
          case LandingStatus.fetchDataSuccess:
            return _LandingViewResponsiveLayout(state.data!);
          case LandingStatus.fetchDataError:
            return state.data != null
                ? _LandingViewResponsiveLayout(state.data!)
                : const CustomErrorWidget();
          default:
            return Center(child: Lottie.asset(Assets.lottieLoadingAnimation));
        }
      },
    );
  }

  bool _buildWhen(LandingStatus status) {
    return status == LandingStatus.fetchDataLoading ||
        status == LandingStatus.fetchDataSuccess ||
        status == LandingStatus.fetchDataError;
  }
}

class _LandingViewResponsiveLayout extends StatelessWidget {
  const _LandingViewResponsiveLayout(this.data);

  final FetchDataResponse data;

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileLayout: (_) => LandingViewMobileLayout(data: data),
      tabletLayout: (_) => LandingViewDesktopLayout(
        data: data,
        tabletProjectAspectRatio: 1 / 2,
        tabletApproachGridCrossAxisCount: 2,
      ),
      desktopLayout: (_) => LandingViewDesktopLayout(data: data),
    );
  }
}
