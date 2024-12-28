import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_portfolio/src/core/themes/app_colors.dart';
import 'package:personal_portfolio/src/core/themes/app_text_styles.dart';
import 'package:personal_portfolio/src/core/utils/app_constants.dart';
import 'package:personal_portfolio/src/core/widgets/my_sized_box.dart';
import 'package:personal_portfolio/src/models/approach.dart';

class ApproachItem extends StatefulWidget {
  const ApproachItem({
    super.key,
    required this.approach,
    required this.index,
  });

  final Approach approach;
  final int index;

  @override
  State<ApproachItem> createState() => _ApproachItemState();
}

class _ApproachItemState extends State<ApproachItem> {
  bool _isHovered = false;
  void _toggleIsHovered() {
    setState(() {
      _isHovered = !_isHovered;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _toggleIsHovered(),
      onExit: (_) => _toggleIsHovered(),
      child: Container(
        decoration: BoxDecoration(
          gradient: AppConstants.boxPrimaryLinearGradient,
          borderRadius: BorderRadius.circular(23.r),
        ),
        child: MaterialButton(
          onPressed: () => _toggleIsHovered(),
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(23.r),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _isHovered
                  ? FadeInUp(
                      delay: const Duration(milliseconds: 200),
                      child: PhaseContainer(
                        isHovered: _isHovered,
                        widget: widget,
                      ),
                    )
                  : FadeInDown(
                      child: PhaseContainer(
                        isHovered: _isHovered,
                        widget: widget,
                      ),
                    ),
              if (_isHovered) MySizedBox.height14,
              if (_isHovered)
                FadeInUp(
                  delay: const Duration(milliseconds: 500),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Text(
                      widget.approach.name,
                      style: AppTextStyles.font32Bold(context),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              if (_isHovered) MySizedBox.height18,
              if (_isHovered)
                FadeInUp(
                  delay: const Duration(milliseconds: 800),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Text(
                      widget.approach.description,
                      style: AppTextStyles.font16Regular(context).copyWith(
                        color: AppColors.colorE4ECFF,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class PhaseContainer extends StatelessWidget {
  const PhaseContainer({
    super.key,
    required bool isHovered,
    required this.widget,
  }) : _isHovered = isHovered;

  final bool _isHovered;
  final ApproachItem widget;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      padding: EdgeInsets.symmetric(
        vertical: _isHovered ? 12.h : 18.h,
        horizontal: _isHovered ? 20.w : 25.w,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11.r),
        gradient: const LinearGradient(
          colors: [Color(0xff161A31), Color(0xff06091F)],
          stops: [0, 1],
          begin: AlignmentDirectional.centerStart,
          end: AlignmentDirectional.centerEnd,
        ),
        border: Border.all(
          color: AppColors.colorCBACF9,
          width: 1.w,
        ),
      ),
      child: Text(
        'Phase ${(widget.index + 1)}',
        style: AppTextStyles.font16Medium(context).copyWith(
          color: AppColors.colorCBACF9,
          fontSize: _isHovered ? 16 : 30,
        ),
      ),
    );
  }
}
