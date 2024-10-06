import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_portfolio/src/core/locale/logic/locale_cubit.dart';
import 'package:personal_portfolio/src/core/widgets/my_sized_box.dart';
import 'package:personal_portfolio/src/widgets/download_cv_and_hire_me_buttons.dart';
import 'package:personal_portfolio/src/widgets/locale_and_theme_icon_buttons.dart';
import 'package:personal_portfolio/src/widgets/my_description_texts.dart';

class IntroducingMyselfSection extends StatelessWidget {
  const IntroducingMyselfSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isArabic = context.watch<LocaleCubit>().isArabic;

    return Container(
      margin: EdgeInsetsDirectional.only(
        top: 8.h,
        start: isArabic ? 0.w : 72.w,
        end: isArabic ? 72.w : 0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const LocaleAndThemeIconButtons(),
          MySizedBox.height140,
          const MyDescriptionTexts(),
          FadeInUp(
            child: const DownloadCVAndHireMeButtons(),
          ),
        ],
      ),
    );
  }
}
