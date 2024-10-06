part of 'app_cubit.dart';

@immutable
sealed class AppState {
  const AppState();
}

final class AppStateInitial extends AppState {
  const AppStateInitial();
}

final class ToggleIsHoveredBool extends AppState {
  final bool isHovered;
  const ToggleIsHoveredBool(this.isHovered);
}
