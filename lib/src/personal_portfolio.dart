import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_portfolio/src/core/di/di.dart';
import 'package:personal_portfolio/src/core/locale/app_localizations_setup.dart';
import 'package:personal_portfolio/src/core/locale/logic/locale_cubit.dart';
import 'package:personal_portfolio/src/core/locale/logic/locale_state.dart';
import 'package:personal_portfolio/src/core/utils/app_strings.dart';

class PersonalPortfolioApp extends StatelessWidget {
  const PersonalPortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LocaleCubit>(
      create: (_) => getIt.get<LocaleCubit>()..getSavedLang(),
      child: BlocBuilder<LocaleCubit, LocaleState>(
        buildWhen: (previous, current) => previous != current,
        builder: (context, localeState) => MaterialApp(
          debugShowCheckedModeBanner: false,
          locale: localeState.locale,
          supportedLocales: AppLocalizationsSetup.supportedLocales,
          localizationsDelegates: AppLocalizationsSetup.localizationsDelegates,
          localeResolutionCallback:
              AppLocalizationsSetup.localeResolutionCallback,
          title: AppStrings.appTitle,
          home: const Scaffold(
            body: Center(
              child: Text('Hello World!'),
            ),
          ),
        ),
      ),
    );
  }
}
