import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/themes/app_colors.dart';
import '../../core/themes/app_text_styles.dart';
import '../../core/utils/app_assets.dart';
import '../../core/utils/app_constants.dart';
import '../../core/utils/app_strings.dart';
import '../../core/utils/functions/open_url.dart';
import '../../core/widgets/custom_cached_network_img.dart';
import '../../core/widgets/my_sized_box.dart';
import '../../models/about.dart';


class ProjectItem extends StatelessWidget {
  const ProjectItem({
    super.key,
    required this.project,
  });

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 36.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(23.r),
        gradient: AppConstants.boxPrimaryLinearGradient,
        border: Border.all(
          color: AppColors.color6971A2.withAlpha(41),
          width: 1.w,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14.r),
                  child: Image.asset(
                    Assets.imagesProjectItemBackground,
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) => const Icon(Icons.error),
                  ),
                ),
              ),
              AspectRatio(
                aspectRatio: 1.7,
                child: CustomCachedNetworkImg(imageUrl: project.imgPath),
              ),
            ],
          ),
          MySizedBox.height32,
          Text(
            project.title,
            style: AppTextStyles.font32Bold(context),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 18.h),
              child: Text(
                project.description,
                style: AppTextStyles.font20Regular(context),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          MySizedBox.height14,
          Wrap(
            spacing: 16.w,
            direction: Axis.horizontal,
            alignment: WrapAlignment.spaceEvenly,
            runAlignment: WrapAlignment.start,
            children: [
              if (project.downloadLink != null)
                ProjectItemTextButton(
                  url: project.downloadLink!,
                  titleText: AppStrings.downloadApp,
                  svgPath: Assets.svgsDownloadIcon,
                ),
              if (project.gitHubLink != null)
                ProjectItemTextButton(
                  url: project.gitHubLink!,
                  titleText: AppStrings.viewOnGitHub,
                  svgPath: Assets.svgsGithubIcon,
                ),
              if (project.promoLink != null)
                ProjectItemTextButton(
                  url: project.promoLink!,
                  titleText: AppStrings.seeThePromo,
                  svgPath: Assets.svgsPlay,
                ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProjectItemTextButton extends StatelessWidget {
  const ProjectItemTextButton({
    super.key,
    required this.url,
    required this.titleText,
    required this.svgPath,
  });

  final String url, titleText, svgPath;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: TextButton.styleFrom(
        textStyle: AppTextStyles.font20Medium(context),
        foregroundColor: AppColors.colorCBACF9,
      ),
      onPressed: () async => await openUrl(url),
      icon: Text(titleText),
      label: SvgPicture.asset(svgPath),
    );
  }
}
