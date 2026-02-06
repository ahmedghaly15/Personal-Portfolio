import 'package:jaspr/jaspr.dart';

class TabsNav extends StatelessComponent {
  const TabsNav({
    super.key,
    required this.tabs,
    required this.selectedTabIndex,
    required this.onTabSelected,
  });

  final List<String> tabs;
  final int selectedTabIndex;
  final void Function(int index) onTabSelected;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield nav([
      ...List.generate(tabs.length, (index) {
        final active = index == selectedTabIndex;
        return button(
          [text(tabs[index])],
          classes: active ? 'active' : null,
          events: {'click': (_) => onTabSelected(index)},
        );
      }),
    ], classes: 'tabs-nav');
  }
}
