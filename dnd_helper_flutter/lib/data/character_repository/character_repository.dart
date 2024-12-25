import 'dart:convert';
import 'dart:developer';
// import 'dart:developer';
// import 'dart:io';
import 'package:dnd_helper_flutter/data/auth_repository/auth_repository.dart';
import 'package:dnd_helper_flutter/data/client_repository/client_repository.dart';
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
    if ((await updatedCharacter).id == null ||
        (await updatedCharacter).id!.isEmpty) {
      throw Exception('No updated character');
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
    final response = await ref.read(sendPutRequestProvider(
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
