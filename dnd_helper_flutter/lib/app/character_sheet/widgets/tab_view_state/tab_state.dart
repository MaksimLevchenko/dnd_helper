import 'package:dnd_helper_flutter/app/character_sheet/pages/abilities/abilities.dart';
import 'package:dnd_helper_flutter/app/character_sheet/pages/fight/fight.dart';
import 'package:dnd_helper_flutter/app/character_sheet/pages/inventory/inventory.dart';
import 'package:dnd_helper_flutter/app/character_sheet/pages/personality.dart';
import 'package:dnd_helper_flutter/app/character_sheet/pages/spells.dart';
import 'package:dnd_helper_flutter/models/character_data/character_data.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'tab_state.g.dart';

@riverpod
class TabViewState extends _$TabViewState {
  @override
  int build() {
    return 0;
  }

  void onTabBarTap(int index) {
    state = index;
  }

  Widget getPage(int index, CharacterData character) {
    switch (index) {
      case 0:
        return Fight(character: character);
      case 1:
        return Abilities(character: character);
      // case 2:
      // return const Inventory();
      case 2:
        return Personality(character: character);
      // case 4:
      // return const Spells();
      default:
        return Fight(character: character);
    }
  }
}
