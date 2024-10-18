import 'dart:developer';

import 'package:dnd_helper_flutter/app/character_sheet/pages/abilities.dart';
import 'package:dnd_helper_flutter/app/character_sheet/pages/inventory.dart';
import 'package:dnd_helper_flutter/app/character_sheet/pages/personality.dart';
import 'package:dnd_helper_flutter/app/character_sheet/pages/spells.dart';
import 'package:dnd_helper_flutter/app/character_sheet/pages/fight.dart';
import 'package:dnd_helper_flutter/data/character_repository/character_repository.dart';
import 'package:dnd_helper_flutter/models/character_data/character_data.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'character_sheet_state.freezed.dart';
part 'character_sheet_state.g.dart';

@Riverpod(keepAlive: true)
class CharacterSheetState extends _$CharacterSheetState {
  @override
  FutureOr<CharacterSheetParameters> build() async {
    final characterRepository = ref.read(characterRepositoryProvider.notifier);
    final characterData = await characterRepository.getCharacter(1);
    return CharacterSheetParameters(characterData: characterData);
  }

  void onTabBarTap(int index) {
    state.whenData(
      (data) {
        state = AsyncValue.data(
            data.copyWith(selectedIndex: index, isTabBarViewVisible: true));
      },
    );
  }

  void toggleTabBarView() {
    state.whenData(
      (data) {
        state = AsyncValue.data(data.copyWith(isTabBarViewVisible: false));
      },
    );
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
class CharacterSheetParameters with _$CharacterSheetParameters {
  factory CharacterSheetParameters({
    required CharacterData characterData,
    @Default(false) bool isTabBarViewVisible,
    @Default(0) int selectedIndex,
  }) = _CharacterSheetParameters;
}
