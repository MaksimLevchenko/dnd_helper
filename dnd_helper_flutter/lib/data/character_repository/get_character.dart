import 'package:dnd_helper_flutter/data/character_repository/character_repository.dart';
import 'package:dnd_helper_flutter/models/character_data/character_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

@riverpod
FutureOr<CharacterData?> getCharacterProvider(Ref ref,
    {required String id}) async {
  final character = ref
      .watch(characterRepositoryProvider)
      .value
      ?.where((element) => element.id == id)
      .firstOrNull;
  // TODO get character from server
  // if (character == null) return null;
  // update repository
  return character;
}
