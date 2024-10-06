import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_portfolio/src/core/locale/logic/locale_cubit.dart';
import 'package:personal_portfolio/src/core/utils/app_utils.dart';
import 'package:personal_portfolio/src/core/widgets/my_sized_box.dart';
import 'package:personal_portfolio/src/widgets/download_cv_and_hire_me_buttons.dart';
import 'package:personal_portfolio/src/widgets/my_description_texts.dart';

class AboutTabContent extends StatelessWidget {
  const AboutTabContent({super.key});

  @override
  Widget build(BuildContext context) {
    final isArabic = context.watch<LocaleCubit>().isArabic;

    return Container(
      margin: AppUtils.tabContentEdgeInsets(isArabic),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
