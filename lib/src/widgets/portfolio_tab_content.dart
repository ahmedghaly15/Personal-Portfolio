import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_portfolio/src/core/utils/app_constants.dart';
import 'package:personal_portfolio/src/cubit/app_cubit.dart';
import 'package:personal_portfolio/src/widgets/project_item.dart';

class PortfolioTabContent extends StatelessWidget {
  const PortfolioTabContent({super.key, this.gridPadding});

  final EdgeInsetsGeometry? gridPadding;

  @override
  Widget build(BuildContext context) {
    return SlideInLeft(
      child: BlocBuilder<AppCubit, AppState>(
        buildWhen: (_, current) => current is ExpandProjectItem,
        builder: (context, state) {
          return Column(
            children: List.generate(
              AppConstants.portfolio.length,
              (index) {
                bool isProjectItemExpanded =
                    context.watch<AppCubit>().isProjectItemExpanded[index];

                return ProjectItem(
                  itemMargin: gridPadding,
                  project: AppConstants.portfolio[index],
                  isExpanded: isProjectItemExpanded,
                  index: index,
                );
              },
            ),
          );
        },
      ),
    );
  }
}
