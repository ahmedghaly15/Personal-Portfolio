import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:personal_portfolio/src/core/helpers/extensions.dart';
import 'package:personal_portfolio/src/core/themes/app_colors.dart';
import 'package:personal_portfolio/src/core/themes/app_text_styles.dart';
import 'package:personal_portfolio/src/core/utils/app_assets.dart';
import 'package:personal_portfolio/src/core/utils/app_strings.dart';
import 'package:personal_portfolio/src/core/utils/functions/open_url.dart';
import 'package:personal_portfolio/src/core/widgets/my_sized_box.dart';
import 'package:personal_portfolio/src/models/project.dart';

class SmallSelectionList extends StatelessWidget {
  const SmallSelectionList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 40.w,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        2,
        (index) => SmallSelectionItem(project: Project.portfolio[index]),
        growable: false,
      ),
    );
  }
}

class SmallSelectionItem extends StatelessWidget {
  const SmallSelectionItem({
    super.key,
    required this.project,
  });

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: 600.w,
        maxHeight: context.screenHeight * 0.75,
      ),
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 36.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(23.r),
        gradient: const LinearGradient(
          colors: [AppColors.color04071D, AppColors.color0C0E23],
          stops: [0, 1],
          begin: AlignmentDirectional.topStart,
          end: AlignmentDirectional.bottomEnd,
        ),
        border: Border.all(
          color: AppColors.color6971A2.withAlpha(41),
          width: 1.w,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14.r),
                  child: Image.asset(
                    Assets.imagesProjectItemBackground,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Image.asset(
                project.image,
                height: 330.h,
                width: 552.w,
              ),
            ],
          ),
          MySizedBox.height32,
          Text(
            project.name,
            style: AppTextStyles.font32Bold(context),
          ),
          Container(
            margin: EdgeInsets.only(top: 18.h),
            child: Text(
              project.description,
              style: AppTextStyles.font20Regular(context),
              textAlign: TextAlign.justify,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const Spacer(),
          Row(
            spacing: 16.w,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (project.downloadUrl != null)
                TextButton.icon(
                  style: TextButton.styleFrom(
                    textStyle: AppTextStyles.font20Medium(context),
                    foregroundColor: AppColors.colorCBACF9,
                  ),
                  onPressed: () async => await openUrl(project.downloadUrl!),
                  label: const Text(AppStrings.downloadApp),
                  icon: SvgPicture.asset(Assets.svgsLinkArrow),
                ),
              if (project.githubUrl != null)
                TextButton.icon(
                  style: TextButton.styleFrom(
                    textStyle: AppTextStyles.font20Medium(context),
                    foregroundColor: AppColors.colorCBACF9,
                  ),
                  onPressed: () async => await openUrl(project.githubUrl!),
                  label: const Text(AppStrings.viewOnGitHub),
                  icon: SvgPicture.asset(Assets.svgsGithubIcon),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
