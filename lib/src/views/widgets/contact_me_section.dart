import 'package:jaspr/jaspr.dart';

class ContactMeSection extends StatelessComponent {
  const ContactMeSection({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield section([
      p([text('Contact')], classes: 'section-subtitle'),
      h2([text('Let\'s build something together')], classes: 'section-title'),
      p(
        [text('Reach out for collaboration, freelance work, or a quick intro call.')],
        classes: 'section-copy',
      ),
      div([
        a([text('Email me')], href: 'mailto:ahmedghaly0767@gmail.com', classes: 'cta-btn'),
        a([text('GitHub')],
            href: 'https://github.com/ahmedghaly15',
            target: Target.blank,
            classes: 'cta-btn'),
      ], classes: 'contact-actions'),
    ], classes: 'shell-card');
  }
}
