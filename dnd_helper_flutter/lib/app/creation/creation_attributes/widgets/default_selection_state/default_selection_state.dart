import 'package:dnd_helper_flutter/app/creation/creation_state/creation_state.dart';
import 'package:dnd_helper_flutter/models/enums/attributes.dart';
import 'package:dnd_helper_flutter/models/race_data/race_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'default_selection_state.freezed.dart';
part 'default_selection_state.g.dart';

@riverpod
class DefaultSelectionState extends _$DefaultSelectionState {
  @override
  DefaultSelectionStateModel build() {
    return DefaultSelectionStateModel(
      statNames: [
        Attributes.strength,
        Attributes.dexterity,
        Attributes.constitution,
        Attributes.intelligence,
        Attributes.wisdom,
        Attributes.charisma,
      ],
      statValues: List.generate(
        6,
        (x) {
          return 0;
        },
      ),
      attributes: getAttributes(),
    );
  }

  Map<Attributes, int> getAttributes() {
    final race = ref.read(creationStateProvider).characterRace;
    if (race != null) {
      if (race.attributes != null) {
        return race.attributes!;
      }
    }
    return {
      Attributes.strength: 0,
      Attributes.dexterity: 0,
      Attributes.constitution: 0,
      Attributes.intelligence: 0,
      Attributes.wisdom: 0,
      Attributes.charisma: 0,
    };
  }

  Map<Attributes, int> getPlusTwoBonus() {
    final attributes = getAttributes();
    return Map.fromEntries(
      attributes.entries.where((entry) => entry.value == 2),
    );
  }

  Map<Attributes, int> getPlusOneBonus() {
    final attributes = getAttributes();
    return Map.fromEntries(
      attributes.entries.where((entry) => entry.value == 1),
    );
  }
}

@freezed
class DefaultSelectionStateModel with _$DefaultSelectionStateModel {
  factory DefaultSelectionStateModel({
    required List<Attributes> statNames,
    required List<int> statValues,
    required Map<Attributes, int> attributes,
  }) = _DefaultSelectionStateModel;
}
