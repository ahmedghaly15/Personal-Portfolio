import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_portfolio/src/core/themes/app_themes.dart';
import 'package:personal_portfolio/src/core/utils/app_strings.dart';
import 'package:personal_portfolio/src/view_model/landing_cubit.dart';
import 'package:personal_portfolio/src/views/landing_view.dart';

import 'core/utils/functions/setup_di.dart';

class PersonalPortfolioApp extends StatelessWidget {
  const PersonalPortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1440, 944),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, __) => BlocProvider<LandingCubit>(
        create: (_) => getIt.get<LandingCubit>()..fetchData(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: AppStrings.appTitle,
          theme: AppThemes.dark,
          themeMode: ThemeMode.dark,
          home: const LandingView(),
        ),
      ),
    );
  }
}
