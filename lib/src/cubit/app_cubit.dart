import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_portfolio/src/core/utils/app_constants.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppStateInitial());

  // Track the hover state of each icon
  List<bool> isHovered = List.generate(
    AppConstants.socialIcons.length,
    (_) => false,
  );

  void setHovered(int index, bool hovered) {
    isHovered[index] = hovered;
    emit(ToggleIsHoveredBool(isHovered[index]));
  }
}
