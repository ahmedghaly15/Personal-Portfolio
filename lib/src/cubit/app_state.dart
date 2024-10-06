part of 'app_cubit.dart';

@immutable
sealed class AppState {}

final class AppStateInitial extends AppState {}

final class ToggleIsHoveredBool extends AppState {
  final bool isHovered;
  ToggleIsHoveredBool(this.isHovered);
}

final class UpdateSelectedTab extends AppState {
  final int index;
  UpdateSelectedTab(this.index);
}
