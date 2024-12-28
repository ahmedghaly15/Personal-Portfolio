import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_portfolio/src/core/di/di.dart';
import 'package:personal_portfolio/src/core/locale/app_localizations_setup.dart';
import 'package:personal_portfolio/src/core/locale/logic/locale_cubit.dart';
import 'package:personal_portfolio/src/core/themes/app_themes.dart';
import 'package:personal_portfolio/src/core/themes/themes_cubit.dart';
import 'package:personal_portfolio/src/core/utils/app_strings.dart';
import 'package:personal_portfolio/src/cubit/app_cubit.dart';
import 'package:personal_portfolio/src/cubit/landing_cubit.dart';
import 'package:personal_portfolio/src/views/home_view.dart';
import 'package:personal_portfolio/src/views/landing_view.dart';

class PersonalPortfolioApp extends StatelessWidget {
  const PersonalPortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1440, 944),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, __) => MultiBlocProvider(
        providers: [
          BlocProvider<LocaleCubit>(
            create: (_) => getIt.get<LocaleCubit>()..getSavedLang(),
          ),
          // BlocProvider<ThemingCubit>(
          //   create: (_) => getIt.get<ThemingCubit>(),
          // ),
          BlocProvider<AppCubit>(
            create: (_) => getIt.get<AppCubit>(),
          ),
          BlocProvider<LandingCubit>(
            create: (_) => getIt.get<LandingCubit>(),
          ),
        ],
        child: BlocBuilder<LocaleCubit, Locale>(
          buildWhen: (previous, current) => previous != current,
          builder: (_, localeState) => MaterialApp(
            debugShowCheckedModeBanner: false,
            locale: localeState,
            supportedLocales: AppLocalizationsSetup.supportedLocales,
            localizationsDelegates:
                AppLocalizationsSetup.localizationsDelegates,
            localeResolutionCallback:
                AppLocalizationsSetup.localeResolutionCallback,
            title: AppStrings.appTitle,
            theme: AppThemes.dark,
            themeMode: ThemeMode.dark,
            home: const LandingView(),
          ),
        ),
      ),
    );
  }
}
