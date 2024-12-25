import 'dart:convert';
import 'dart:developer';
// import 'dart:developer';
// import 'dart:io';
import 'package:dnd_helper_flutter/data/auth_repository/auth_repository.dart';
import 'package:dnd_helper_flutter/data/client_repository/client_repository.dart';
// import 'package:dnd_helper_flutter/models/attacks_data/attacks_data.dart';
// import 'package:dnd_helper_flutter/models/class_data/subclass_data.dart';
// import 'package:dnd_helper_flutter/models/enums/actions.dart';
// import 'package:dnd_helper_flutter/models/enums/conditions.dart';
// import 'package:dnd_helper_flutter/models/enums/damage_types.dart';
// import 'package:dnd_helper_flutter/models/enums/spells_enums/magic_scools.dart';
// import 'package:dnd_helper_flutter/models/race_data/subrace_data.dart';
// import 'package:dnd_helper_flutter/models/spells_data/spells_data.dart';
// import 'package:http/http.dart';
// import 'package:universal_html/html.dart' as web;

// import 'package:dnd_helper_flutter/models/arms_data/arms_data.dart';
// import 'package:dnd_helper_flutter/models/background_data/background_data.dart';
// import 'package:dnd_helper_flutter/models/class_data/class_data.dart';
// import 'package:dnd_helper_flutter/models/coins_data/coins_data.dart';
// import 'package:dnd_helper_flutter/models/enums/attributes.dart';
// import 'package:dnd_helper_flutter/models/enums/dice.dart';
// import 'package:dnd_helper_flutter/models/enums/ideology.dart';
// import 'package:dnd_helper_flutter/models/enums/skills.dart';
// import 'package:dnd_helper_flutter/models/race_data/race_data.dart';
// import 'package:flutter/foundation.dart';
import 'package:dnd_helper_flutter/models/character_data/character_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
// import 'package:universal_html/html.dart' as web;

part 'character_repository.g.dart';

@Riverpod(keepAlive: true)
class CharacterRepository extends _$CharacterRepository {
  @override
  FutureOr<List<CharacterData>> build() async {
    final auth = await ref.watch(authRepositoryProvider.future);
    if (!auth.isSuccess) {
      return [];
    }
    final charactersJson = await ref.read(sendGetRequestProvider(
      path: '/api/Character/GetUserCharacters',
      authKey: auth.authKey!,
    ).future);
    if (charactersJson.body.isEmpty) {
      return [];
    }
    return (jsonDecode(charactersJson.body) as List)
        .map((e) => CharacterData.fromJson(e))
        .toList();
  }

  FutureOr<CharacterData> saveCharacter(CharacterData character) async {
    late final Future<CharacterData> updatedCharacter;
    if (character.id != null) {
      updatedCharacter = _updateCharacter(character);
    } else {
      updatedCharacter = _createCharacter(character);
    }
    state = AsyncData([
      await updatedCharacter,
      ...state.value?.where((element) => element.id != character.id) ?? [],
    ]);
    return updatedCharacter;
  }

  Future<CharacterData> _createCharacter(CharacterData character) async {
    if (ref.read(authRepositoryProvider).value?.authKey == null) {
      throw Exception('No auth key');
    }
    final response = await ref.read(
      sendPostRequestProvider(
        path: '/api/Character/Create',
        authKey: ref.read(authRepositoryProvider).value!.authKey,
        parametersString: jsonEncode(character.toJson()),
      ).future,
    );
    return character.copyWith(id: response.body);
  }

  Future<CharacterData> _updateCharacter(CharacterData character) async {
    if (ref.read(authRepositoryProvider).value?.authKey == null ||
        character.id == null) {
      throw Exception('No auth key or character id');
    }
    log('authKey: ${ref.read(authRepositoryProvider).value!.authKey}');
    final response = await ref.read(sendPostRequestProvider(
      path: '/api/Character/Update',
      authKey: ref.read(authRepositoryProvider).value!.authKey,
      parametersString: jsonEncode(character.toJson()),
    ).future);
    log('response: ${response.body}, ${response.statusCode}, ${response.reasonPhrase}');
    return character;
  }

  FutureOr<bool> deleteCharacter(String id) {
    if (ref.read(authRepositoryProvider).value?.authKey == null || id.isEmpty) {
      throw Exception('No auth key');
    }
    ref.read(sendDeleteRequestProvider(
      path: '/api/Character/Delete',
      query: {'characterId': id},
      authKey: ref.read(authRepositoryProvider).value!.authKey,
    ).future);
    state = AsyncData(
      state.value!.where((element) => element.id != id).toList(),
    );
    return true;
  }
}
