import 'package:dnd_helper_flutter/data/character_repository/character_repository.dart';
import 'package:dnd_helper_flutter/models/character_data/character_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_character.g.dart';

@Riverpod(keepAlive: true)
FutureOr<CharacterData?> getCharacter(Ref ref, {required String id}) async {
  return ref
      .watch(characterRepositoryProvider)
      .value
      ?.firstWhere((element) => element.id == id);
  // if (character == null) return null;
  // update repository
}
