import 'package:flutter/material.dart';
import 'package:personal_portfolio/src/core/di/di.dart';
import 'package:personal_portfolio/src/personal_portfolio.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupDI();
  runApp(const PersonalPortfolioApp());
}
