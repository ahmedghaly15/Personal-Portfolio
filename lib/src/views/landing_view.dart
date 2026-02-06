import 'package:jaspr/jaspr.dart';

import 'widgets/landing_view_body_bloc_builder.dart';

class LandingView extends StatelessComponent {
  const LandingView({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield section([
      const LandingViewBodyBlocBuilder(),
    ], classes: 'landing-view');
  }
}
