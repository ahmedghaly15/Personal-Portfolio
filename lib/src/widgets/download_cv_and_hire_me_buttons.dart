import 'package:file_saver/file_saver.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:typed_data';
import 'package:personal_portfolio/src/core/locale/lang_keys.dart';
import 'package:personal_portfolio/src/core/utils/app_assets.dart';
import 'package:personal_portfolio/src/core/utils/app_strings.dart';
import 'package:personal_portfolio/src/core/utils/functions/open_url.dart';
import 'package:personal_portfolio/src/core/widgets/main_button.dart';
import 'package:personal_portfolio/src/core/widgets/my_sized_box.dart';

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
        MainButton(
          isOutlined: true,
          onPressed: () async => await openUrl(
            AppStrings.myGmail,
            isEmail: true,
          ),
          textKey: LangKeys.hireMe,
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
