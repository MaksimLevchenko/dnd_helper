import 'package:dnd_helper_flutter/data/character_repository/character_repository.dart';
import 'package:dnd_helper_flutter/models/character_data/character_data.dart';
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
            data.copyWith(tabBarIndex: index, isTabBarViewVisible: true));
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
}

@freezed
class CharacterSheetParameters with _$CharacterSheetParameters {
  factory CharacterSheetParameters({
    required CharacterData characterData,
    @Default(0) int tabBarIndex,
    @Default(false) bool isTabBarViewVisible,
  }) = _CharacterSheetParameters;
}
