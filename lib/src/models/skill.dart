class Skill {
  final String name;
  final double percent;

  const Skill({
    required this.name,
    required this.percent,
  });

  static const List<Skill> skills = [
    Skill(name: 'Dart', percent: 0.85),
    Skill(name: 'OOP', percent: 0.8),
    Skill(name: 'Flutter Framework', percent: 0.8),
    Skill(name: 'Problem Solving', percent: 0.7),
    Skill(name: 'Version Control (Git)', percent: 0.85),
    Skill(name: 'UI/UX Implementation', percent: 0.8),
    Skill(name: 'Cubit & Bloc', percent: 0.9),
    Skill(name: 'Riverpod', percent: 0.7),
    Skill(name: 'Firebase', percent: 0.8),
    Skill(name: 'APIs Handling', percent: 0.9),
    Skill(name: 'Clean Architecture', percent: 0.8),
    Skill(name: 'MVVM Pattern', percent: 0.9),
    Skill(name: 'Responsive Design', percent: 0.8),
  ];
}
