import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_portfolio/src/core/locale/logic/locale_cubit.dart';
import 'package:personal_portfolio/src/core/widgets/my_sized_box.dart';
import 'package:personal_portfolio/src/widgets/locale_and_theme_icon_buttons.dart';
import 'package:personal_portfolio/src/widgets/social_icons_bloc_builder.dart';

class SettingsAndSocialIconButtons extends StatelessWidget {
  const SettingsAndSocialIconButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final isArabic = context.watch<LocaleCubit>().isArabic;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment:
          isArabic ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: const [
        LocaleAndThemeIconButtons(),
        MySizedBox.height38,
        SocialIconsBlocBuilder(direction: Axis.vertical),
      ],
    );
  }
}
