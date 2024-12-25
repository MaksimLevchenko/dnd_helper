import 'package:dnd_helper_flutter/app/character_sheet/pages/abilities/abilities.dart';
import 'package:dnd_helper_flutter/app/character_sheet/pages/fight/fight.dart';
import 'package:dnd_helper_flutter/app/character_sheet/pages/inventory/inventory.dart';
import 'package:dnd_helper_flutter/app/character_sheet/pages/personality.dart';
import 'package:dnd_helper_flutter/app/character_sheet/pages/spells.dart';
import 'package:dnd_helper_flutter/data/character_repository/character_repository.dart';
import 'package:dnd_helper_flutter/data/character_repository/get_character.dart';
import 'package:dnd_helper_flutter/models/arms_data/arms_data.dart';
import 'package:dnd_helper_flutter/models/attacks_data/attacks_data.dart';
import 'package:dnd_helper_flutter/models/character_data/character_data.dart';
import 'package:dnd_helper_flutter/models/enums/attributes.dart';
import 'package:dnd_helper_flutter/models/enums/skills.dart';
import 'package:dnd_helper_flutter/ui/calculator/calculator_state/calculator_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'character_sheet_state.freezed.dart';
part 'character_sheet_state.g.dart';

@Riverpod(keepAlive: true)
class CharacterSheetState extends _$CharacterSheetState {
  @override
  FutureOr<CharacterSheetParameters> build(String characterId) async {
    final characterData =
        await ref.watch(getCharacterProvider(id: characterId).future);
    if (characterData == null) return Future.error('Character not found');
    return CharacterSheetParameters(characterData: characterData);
  }

  saveCharacter(
    CharacterData characterData,
  ) {
    future.then((value) {
      ref
          .read(characterRepositoryProvider.notifier)
          .saveCharacter(characterData);
    });
  }

  void toggleInspiration() {
    state = state.whenData((parameters) {
      final updatedCharacterData = parameters.characterData.copyWith(
        inspiration: !parameters.characterData.inspiration,
      );
      return CharacterSheetParameters(characterData: updatedCharacterData);
    });
  }

  void updateExperience(int newExperience, WidgetRef ref) {
    state = state.whenData((parameters) {
      final updatedCharacterData = parameters.characterData.copyWith(
        experience: parameters.characterData.experience + newExperience,
      );
      ref.read(calculatorStateProvider).controller.clear();
      return CharacterSheetParameters(characterData: updatedCharacterData);
    });
  }

  Map<Attributes, int> getAttributes() {
    return state.value!.characterData.attributes;
  }

  String getAttribyteAsStringRu(Attributes attribute) {
    switch (attribute) {
      case Attributes.strength:
        return 'СИЛА';
      case Attributes.dexterity:
        return 'ЛОВКОСТЬ';
      case Attributes.constitution:
        return 'ВЫНОСЛИВОСТЬ';
      case Attributes.intelligence:
        return 'ИНТЕЛЛЕКТ';
      case Attributes.wisdom:
        return 'МУДРОСТЬ';
      case Attributes.charisma:
        return 'ХАРИЗМА';
    }
  }

  String getSkillAsStringRu(Skills skill) {
    switch (skill) {
      case Skills.acrobatics:
        return 'АКРОБАТИКА';
      case Skills.animalHandling:
        return 'ОБРАЩЕНИЕ';
      case Skills.arcana:
        return 'МАГИЯ';
      case Skills.athletics:
        return 'АТЛЕТИКА';
      case Skills.deception:
        return 'ОБМАН';
      case Skills.history:
        return 'ИСТОРИЯ';
      case Skills.insight:
        return 'ПРОНИЦАТЕЛЬНОСТЬ';
      case Skills.intimidation:
        return 'ЗАПУГИВАНИЕ';
      case Skills.investigation:
        return 'АНАЛИЗ';
      case Skills.medicine:
        return 'МЕДИЦИНА';
      case Skills.nature:
        return 'ПРИРОДА';
      case Skills.perception:
        return 'ВОСПРИЯТИЕ';
      case Skills.performance:
        return 'ИСПОЛНЕНИЕ';
      case Skills.persuasion:
        return 'УБЕЖДЕНИЕ';
      case Skills.religion:
        return 'РЕЛИГИЯ';
      case Skills.sleightOfHand:
        return 'ЛОВКОСТЬ РУК';
      case Skills.stealth:
        return 'СКРЫТНОСТЬ';
      case Skills.survival:
        return 'ВЫЖИВАНИЕ';
    }
  }

  void onTabBarTap(int index) {
    state = state.whenData((parameters) {
      return parameters.copyWith(selectedPage: index);
    });
  }

  void collapseTapBar() {
    state = state.whenData((parameters) {
      return parameters.copyWith(isTabBarViewVisible: false);
    });
  }

  void setSelectedAttribute(int index) {
    state = state.whenData((parameters) {
      return parameters.selectedAttribute == index
          ? parameters.copyWith(
              selectedAttribute: index,
              isTabBarViewVisible: !parameters.isTabBarViewVisible)
          : parameters.copyWith(
              selectedAttribute: index, isTabBarViewVisible: true);
    });
  }

  void toggleEditMode() {
    state = state.whenData((parameters) {
      return parameters.copyWith(editMode: !parameters.editMode);
    });
  }

  void increaceAttacksCount() {
    state = state.whenData(
      (parameters) {
        final updatedCharacterData = parameters.characterData.copyWith(
          attacks: parameters.characterData.attacks != null
              ? [...?parameters.characterData.attacks, const ArmsData(name: '')]
              : [const ArmsData(name: ''), const ArmsData(name: '')],
        );
        ref
            .read(characterRepositoryProvider.notifier)
            .saveCharacter(updatedCharacterData);
        return CharacterSheetParameters(characterData: updatedCharacterData);
      },
    );
  }

  void deleteAttack(int index) {
    state = state.whenData(
      (parameters) {
        if (parameters.characterData.attacks != null) {
          final updatedCharacterData = parameters.characterData.copyWith(
            attacks: parameters.characterData.attacks!
                .asMap()
                .entries
                .where((entry) => entry.key != index)
                .map((entry) => entry.value)
                .toList(),
          );
          ref
              .read(characterRepositoryProvider.notifier)
              .saveCharacter(updatedCharacterData);
          return CharacterSheetParameters(characterData: updatedCharacterData);
        }
        return parameters;
      },
    );
  }
}

@override
void dispose(CharacterSheetParameters parameters) {}

@freezed
class CharacterSheetParameters with _$CharacterSheetParameters {
  factory CharacterSheetParameters({
    required CharacterData characterData,
    @Default(true) bool isTabBarViewVisible,
    @Default(0) int selectedPage,
    @Default(0) int selectedAttribute,
    @Default(false) bool editMode,
  }) = _CharacterSheetParameters;
}
