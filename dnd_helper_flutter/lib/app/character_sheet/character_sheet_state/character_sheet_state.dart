import 'package:dnd_helper_flutter/data/character_repository/character_repository.dart';
import 'package:dnd_helper_flutter/models/character_data/character_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'character_sheet_state.freezed.dart';
part 'character_sheet_state.g.dart';

@Riverpod(keepAlive: true)
class CharacterSheetState extends _$CharacterSheetState {
  FutureOr<CharacterData> build() async {
    final characterRepository = ref.watch(characterRepositoryProvider.notifier);
    return await characterRepository.getCharacter(1);
  }
}

@freezed
class CharacterSheetParameters with _$CharacterSheetParameters {
  factory CharacterSheetParameters({CharacterData? characterData}) =
      _CharacterSheetParameters;
}
