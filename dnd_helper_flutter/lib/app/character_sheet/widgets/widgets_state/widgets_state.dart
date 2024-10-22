import 'package:dnd_helper_flutter/app/character_sheet/pages/abilities.dart';
import 'package:dnd_helper_flutter/app/character_sheet/pages/fight/fight.dart';
import 'package:dnd_helper_flutter/app/character_sheet/pages/inventory/inventory.dart';
import 'package:dnd_helper_flutter/app/character_sheet/pages/personality.dart';
import 'package:dnd_helper_flutter/app/character_sheet/pages/spells.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'widgets_state.freezed.dart';
part 'widgets_state.g.dart';

@riverpod
class WidgetsState extends _$WidgetsState {
  @override
  WidgetsStateParameters build() {
    return const WidgetsStateParameters();
  }

  void onTabBarTap(int index) {
    state = state.copyWith(selectedPage: index);
  }

  void collapseTapBar() {
    state = state.copyWith(isTabBarViewVisible: false);
  }

  void setSelectedAttribute(int index) {
    state.selectedAttribute == index
        ? state = state.copyWith(
            selectedAttribute: index,
            isTabBarViewVisible: !state.isTabBarViewVisible)
        : state =
            state.copyWith(selectedAttribute: index, isTabBarViewVisible: true);
  }

  Widget getPage(int index) {
    switch (index) {
      case 0:
        return const Fight();
      case 1:
        return const Abilities();
      case 2:
        return const Inventory();
      case 3:
        return const Personality();
      case 4:
        return const Spells();
      default:
        return const Fight();
    }
  }
}

@freezed
class WidgetsStateParameters with _$WidgetsStateParameters {
  const factory WidgetsStateParameters({
    @Default(true) bool isTabBarViewVisible,
    @Default(0) int selectedPage,
    @Default(0) int selectedAttribute,
    @Default(350) double tabBarHeight,
  }) = _WidgetsStateParameters;
}
