import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_portfolio/src/core/helpers/extensions.dart';
import 'package:personal_portfolio/src/core/themes/app_text_styles.dart';
import 'package:personal_portfolio/src/core/utils/app_constants.dart';
import 'package:personal_portfolio/src/cubit/app_cubit.dart';

class HeaderTabsBlocBuilder extends StatelessWidget {
  const HeaderTabsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      buildWhen: (_, current) => current is UpdateSelectedTab,
      builder: (context, state) => Row(
        children: List.generate(
          AppConstants.headerTitlesKeys.length,
          (index) => Container(
            margin: EdgeInsetsDirectional.only(end: 24.w),
            child: FadeInLeft(
              child: context.read<AppCubit>().selectedTab == index
                  ? Column(
                      children: [
                        _buildTabTextButton(context, index),
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          width: context.screenWidth * 0.045,
                          child: Divider(
                            color: Colors.white,
                            thickness: 2.w,
                            height: 1.h,
                          ),
                        )
                      ],
                    )
                  : _buildTabTextButton(context, index),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTabTextButton(BuildContext context, int index) {
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        textStyle: AppTextStyles.ralewayFont18Medium(context),
      ),
      onPressed: () => context.read<AppCubit>().updateSelectedTab(index),
      child: Text(
        context.translate(AppConstants.headerTitlesKeys[index]),
      ),
    );
  }
}
