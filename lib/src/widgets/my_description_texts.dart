import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_portfolio/src/core/helpers/extensions.dart';
import 'package:personal_portfolio/src/core/utils/app_constants.dart';

class MyDescriptionTexts extends StatelessWidget {
  const MyDescriptionTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        AppConstants.myDescriptionLangKeys.length,
        (index) => FadeInLeft(
          duration: const Duration(milliseconds: 1000),
          delay: Duration(milliseconds: 500 * index),
          child: Container(
            margin: EdgeInsets.only(
              bottom: AppConstants.myDescriptionTextsBottomMargins[index].h,
            ),
            child: Text(
              context.translate(
                AppConstants.myDescriptionLangKeys[index],
              ),
              style: AppConstants.myDescriptionTextStyles(context)[index],
              textAlign: index == AppConstants.myDescriptionLangKeys.length - 1
                  ? TextAlign.justify
                  : TextAlign.start,
            ),
          ),
        ),
      ),
    );
  }
}
