import 'dart:developer';

import 'package:dnd_helper_flutter/app/character_sheet/character_sheet_state/character_sheet_state.dart';
import 'package:dnd_helper_flutter/data/character_repository/character_repository.dart';
import 'package:dnd_helper_flutter/models/background_data/background_data.dart';
import 'package:dnd_helper_flutter/models/character_data/character_data.dart';
import 'package:dnd_helper_flutter/models/class_data/class_data.dart';
import 'package:dnd_helper_flutter/models/enums/attributes.dart';
import 'package:dnd_helper_flutter/models/race_data/race_data.dart';
import 'package:dnd_helper_flutter/models/race_data/subrace_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'creation_state.g.dart';

@Riverpod(keepAlive: true)
class CreationState extends _$CreationState {
  @override
  CharacterData build() {
    return const CharacterData();
  }

  void setClass(ClassData characterClass) {
    state = state.copyWith(characterClass: characterClass);
  }

  void setRace(RaceData race) {
    state = state.copyWith(characterRace: race);
  }

  void setSubrace(SubraceData subrace) {
    state = state.copyWith(subrace: subrace);
  }

  void setAttributes(Map<Attributes, int> attributes) {
    state = state.copyWith(attributes: attributes);
  }

  void setBackground(BackgroundData background) {
    state = state.copyWith(background: background);
  }

  void setName(String name) {
    state = state.copyWith(characterName: name);
  }

  void saveCharacter() {
    ref.read(characterRepositoryProvider.notifier).saveCharacter(state);
  }
}
