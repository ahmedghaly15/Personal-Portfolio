import 'package:file_saver/file_saver.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:typed_data';
import 'package:personal_portfolio/src/core/locale/lang_keys.dart';
import 'package:personal_portfolio/src/core/utils/app_assets.dart';
import 'package:personal_portfolio/src/core/utils/app_strings.dart';
import 'package:personal_portfolio/src/core/utils/functions/open_url.dart';
import 'package:personal_portfolio/src/core/widgets/main_button.dart';
import 'package:personal_portfolio/src/core/widgets/my_sized_box.dart';
import 'package:personal_portfolio/src/cubit/app_cubit.dart';

class DownloadCVAndHireMeButtons extends StatelessWidget {
  const DownloadCVAndHireMeButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MainButton(
          onPressed: () async => await _downloadCV(),
          textKey: LangKeys.downloadCV,
        ),
        MySizedBox.width16,
        BlocBuilder<AppCubit, AppState>(
          buildWhen: (_, current) => current is ToggleHireMeButtonIsHovered,
          builder: (context, state) {
            final bool isHovered = context.watch<AppCubit>().isHireMeHovered;
            return MouseRegion(
              onEnter: (_) => context.read<AppCubit>().toggleHireMeHovered(),
              onExit: (_) => context.read<AppCubit>().toggleHireMeHovered(),
              child: MainButton(
                isOutlined: isHovered ? false : true,
                onPressed: () async => await openUrl(
                  AppStrings.myGmail,
                  isEmail: true,
                ),
                textKey: LangKeys.hireMe,
              ),
            );
          },
        ),
      ],
    );
  }

  Future<void> _downloadCV() async {
    final ByteData data = await rootBundle.load(Assets.cvAhmedGhaly);
    final Uint8List bytes = data.buffer.asUint8List();
    await FileSaver.instance.saveFile(
      name: AppStrings.appTitle, // The name of the file
      bytes: bytes, // The bytes data to be saved
      ext: 'pdf', // The extension of the file
      mimeType: MimeType.pdf,
    );
  }
}
