import 'dart:developer';

import 'package:dnd_helper_flutter/models/character_data/character_data.dart';
import 'package:dnd_helper_flutter/models/class_data/class_data.dart';
import 'package:dnd_helper_flutter/models/enums/attributes.dart';
import 'package:dnd_helper_flutter/models/enums/dice.dart';
import 'package:dnd_helper_flutter/models/enums/skills.dart';
import 'package:dnd_helper_flutter/models/race_data/race_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'character_repository.g.dart';

@Riverpod(keepAlive: true)
class CharacterRepository extends _$CharacterRepository {
  @override
  FutureOr<List<CharacterData>> build() async {
    // TODO get characters from server
    return [];
  }

  FutureOr<CharacterData> saveCharacter(CharacterData character) {
    final characterWithId = character.copyWith(id: '${DateTime.now()}');
    state = AsyncData([
      characterWithId,
      ...state.value?.where((element) => element.id != character.id) ?? [],
    ]);
    return characterWithId;
  }

  FutureOr<bool> deleteCharacter(String id) {
    state = AsyncData(
      state.value!.where((element) => element.id != id).toList(),
    );
    return true;
  }
}
