import 'package:dnd_helper_flutter/data/character_repository/character_repository.dart';
import 'package:dnd_helper_flutter/data/character_repository/get_character.dart';
import 'package:dnd_helper_flutter/models/character_data/character_data.dart';
import 'package:dnd_helper_flutter/models/enums/attributes.dart';
import 'package:dnd_helper_flutter/models/enums/skills.dart';
import 'package:dnd_helper_flutter/ui/calculator/calculator_state/calculator_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'character_sheet_state.freezed.dart';
part 'character_sheet_state.g.dart';

@Riverpod(keepAlive: true)
class CharacterSheetState extends _$CharacterSheetState {
  @override
  FutureOr<CharacterSheetParameters> build(String characterId) async {
    final characterData = await getCharacterProvider(ref, id: characterId);
    if (characterData == null) return Future.error('Character not found');
    return CharacterSheetParameters(characterData: characterData);
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
    return state.when(
      data: (CharacterSheetParameters data) {
        return data.characterData.attributes;
      },
      loading: () => {},
      error: (error, stack) => {},
    );
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
}

@override
void dispose(CharacterSheetParameters parameters) {}

@freezed
class CharacterSheetParameters with _$CharacterSheetParameters {
  factory CharacterSheetParameters({
    required CharacterData characterData,
  }) = _CharacterSheetParameters;
}
