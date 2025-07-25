import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/themes/app_themes.dart';
import 'core/utils/app_strings.dart';
import 'core/utils/functions/setup_service_locator.dart';
import 'view_model/landing_cubit.dart';
import 'views/landing_view.dart';

class PersonalPortfolioApp extends StatelessWidget {
  const PersonalPortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1440, 944),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, __) => BlocProvider<LandingCubit>(
        create: (_) => locator.get<LandingCubit>()..fetchData(),
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
