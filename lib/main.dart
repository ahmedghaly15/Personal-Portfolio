import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_portfolio/src/core/di/di.dart';
import 'package:personal_portfolio/src/core/utils/bloc_observer.dart';
import 'package:personal_portfolio/src/personal_portfolio_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupDI();
  Bloc.observer = MyBlocObserver();
  await ScreenUtil.ensureScreenSize();
  runApp(const PersonalPortfolioApp());
}
