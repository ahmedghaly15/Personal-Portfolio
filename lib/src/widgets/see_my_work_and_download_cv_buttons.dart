import 'package:animate_do/animate_do.dart';
import 'package:file_saver/file_saver.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show ByteData, Uint8List, rootBundle;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:personal_portfolio/src/core/themes/app_text_styles.dart';
import 'package:personal_portfolio/src/core/utils/app_assets.dart';
import 'package:personal_portfolio/src/core/utils/app_strings.dart';
import 'package:personal_portfolio/src/core/utils/functions/open_url.dart';
import 'package:personal_portfolio/src/core/widgets/main_button.dart';

class SeeMyWorkAndDownloadCVButtons extends StatelessWidget {
  const SeeMyWorkAndDownloadCVButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      delay: const Duration(milliseconds: 900),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 24.w,
        children: [
          MainButton(
            onPressed: () async => await openUrl(AppStrings.gitHubUrl),
            borderRadius: 14,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              spacing: 10.w,
              children: [
                Text(
                  AppStrings.seeMyWork,
                  style: AppTextStyles.font18Medium(context),
                ),
                SvgPicture.asset(Assets.svgsLinkArrow),
              ],
            ),
          ),
          MainButton(
            onPressed: () async => await _downloadCV(),
            borderRadius: 14,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              spacing: 10.w,
              children: [
                Text(
                  AppStrings.downloadCV,
                  style: AppTextStyles.font18Medium(context),
                ),
                SvgPicture.asset(Assets.svgsDownloadIcon),
              ],
            ),
          ),
        ],
      ),
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
