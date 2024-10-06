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
