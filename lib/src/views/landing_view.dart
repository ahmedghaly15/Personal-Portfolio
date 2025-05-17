import 'package:flutter/material.dart';

import 'widgets/landing_view_body_bloc_builder.dart';



class LandingView extends StatelessWidget {
  const LandingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LandingViewBodyBlocBuilder(),
    );
  }
}
