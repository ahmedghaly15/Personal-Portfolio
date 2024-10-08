part of 'app_cubit.dart';

@immutable
sealed class AppState {}

final class AppStateInitial extends AppState {}

final class ToggleSocialIconIsHoveredBool extends AppState {
  final bool isHovered;
  ToggleSocialIconIsHoveredBool(this.isHovered);
}

final class UpdateSelectedTab extends AppState {
  final int index;
  UpdateSelectedTab(this.index);
}

final class ToggleProjectItemButtonIsHovered extends AppState {
  final bool isHovered;
  ToggleProjectItemButtonIsHovered(this.isHovered);
}

final class ToggleHireMeButtonIsHovered extends AppState {
  final bool isHovered;
  ToggleHireMeButtonIsHovered(this.isHovered);
}

final class ExpandProjectItem extends AppState {
  final bool isExpanded;
  ExpandProjectItem(this.isExpanded);
}
