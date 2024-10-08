import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_portfolio/src/core/utils/app_constants.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppStateInitial());

  // Track the hover state of each icon
  List<bool> isSocialIconHovered = List.generate(
    AppConstants.socialIcons.length,
    (_) => false,
  );

  void setSocialIconHovered(int index) {
    isSocialIconHovered[index] = !isSocialIconHovered[index];
    emit(ToggleSocialIconIsHoveredBool(isSocialIconHovered[index]));
  }

  int selectedTab = 0;
  void updateSelectedTab(int index) {
    if (selectedTab != index) {
      selectedTab = index;
      emit(UpdateSelectedTab(selectedTab));
    }
  }

  List<bool> isProjectButtonHovered = List.generate(
    AppConstants.socialIcons.length,
    (_) => false,
  );

  void toggleProjectButtonHovered(int index) {
    isProjectButtonHovered[index] = !isProjectButtonHovered[index];
    emit(ToggleProjectItemButtonIsHovered(isProjectButtonHovered[index]));
  }

  bool isHireMeHovered = false;
  void toggleHireMeHovered() {
    isHireMeHovered = !isHireMeHovered;
    emit(ToggleHireMeButtonIsHovered(isHireMeHovered));
  }

  List<bool> isProjectItemExpanded = List.generate(
    AppConstants.portfolio.length,
    (_) => false,
  );

  void toggleProjectItemExpanded(int index) {
    isProjectItemExpanded[index] = !isProjectItemExpanded[index];
    emit(ExpandProjectItem(isProjectItemExpanded[index]));
  }
}
