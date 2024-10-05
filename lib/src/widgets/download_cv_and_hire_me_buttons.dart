import 'package:flutter/material.dart';
import 'package:personal_portfolio/src/core/locale/lang_keys.dart';
import 'package:personal_portfolio/src/core/widgets/main_button.dart';
import 'package:personal_portfolio/src/core/widgets/my_sized_box.dart';

class DownloadCVAndHireMeButtons extends StatelessWidget {
  const DownloadCVAndHireMeButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MainButton(
          onPressed: () {},
          textKey: LangKeys.downloadCV,
        ),
        MySizedBox.width16,
        MainButton(
          isOutlined: true,
          onPressed: () {},
          textKey: LangKeys.hireMe,
        ),
      ],
    );
  }
}
