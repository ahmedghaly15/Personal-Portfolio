import 'package:animate_do/animate_do.dart';
import 'package:file_saver/file_saver.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show ByteData, Uint8List, rootBundle;
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/utils/app_assets.dart';
import '../../core/utils/app_strings.dart';
import '../../core/utils/functions/open_url.dart';
import '../../core/widgets/main_button.dart';

class SeeMyWorkAndDownloadCVButtons extends StatelessWidget {
  const SeeMyWorkAndDownloadCVButtons({
    super.key,
    this.areExpanded = false,
    this.gradient,
    required this.seeMyWorkUrl,
  });

  final bool areExpanded;
  final Gradient? gradient;
  final String seeMyWorkUrl;

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      delay: const Duration(milliseconds: 900),
      child: OverflowBar(
        alignment: MainAxisAlignment.center,
        overflowAlignment: OverflowBarAlignment.center,
        overflowSpacing: 16.h,
        spacing: 24.w,
        children: [
          MainButton.icon(
            context: context,
            labelText: AppStrings.seeMyWork,
            svgIcon: Assets.svgsLinkArrow,
            gradient: gradient,
            width: areExpanded ? double.infinity : null,
            onPressed: () async => await openUrl(seeMyWorkUrl),
          ),
          MainButton.icon(
            context: context,
            labelText: AppStrings.downloadCV,
            svgIcon: Assets.svgsDownloadIcon,
            gradient: gradient,
            width: areExpanded ? double.infinity : null,
            onPressed: () async => await _downloadCV(),
          ),
        ],
      ),
    );
  }

  Future<void> _downloadCV() async {
    final ByteData data = await rootBundle.load(Assets.cvAhmedGhalyFlutterDev);
    final Uint8List bytes = data.buffer.asUint8List();
    await FileSaver.instance.saveFile(
      name: 'Ahmed Ghaly - Flutter Dev', // The name of the file
      bytes: bytes, // The bytes data to be saved
      ext: 'pdf', // The extension of the file
      mimeType: MimeType.pdf,
    );
  }
}
