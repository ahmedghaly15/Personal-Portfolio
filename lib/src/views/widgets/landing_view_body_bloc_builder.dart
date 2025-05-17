import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import '../../core/utils/app_assets.dart';
import '../../core/widgets/responsive_layout.dart';
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
            return ResponsiveLayout(
              mobileLayout: (_) => const LandingViewMobileLayout(),
              tabletLayout: (_) => const LandingViewDesktopLayout(
                tabletProjectAspectRatio: 1 / 2,
                tabletApproachGridCrossAxisCount: 2,
              ),
              desktopLayout: (_) => const LandingViewDesktopLayout(),
            );
          case LandingStatus.fetchDataError:
            return const CustomErrorWidget();
          default:
            return Center(
              child: Lottie.asset(Assets.lottieLoadingAnimation),
            );
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
