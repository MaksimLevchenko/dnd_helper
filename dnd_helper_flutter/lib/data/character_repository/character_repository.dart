import 'package:dnd_helper_flutter/models/character_data/character_data.dart';
import 'package:dnd_helper_flutter/models/class_data/class_data.dart';
import 'package:dnd_helper_flutter/models/enums/dice.dart';
import 'package:dnd_helper_flutter/models/race_data/race_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'character_repository.g.dart';

@Riverpod(keepAlive: true)
class CharacterRepository extends _$CharacterRepository {
  @override
  FutureOr<List<CharacterData>?> build() {
    return null;
  }

  final ClassData classData = const ClassData(
      id: 1,
      name: 'class',
      subClasses: [],
      savingThrows: [],
      hitDice: Dice.d10,
      proficienciesWeapons: [],
      proficienciesArmor: [],
      startEquipment: [],
      classFeatures: {},
      description: '',
      imageLink: '',
      source: '');
  final RaceData raceData = const RaceData(
    name: 'race',
    imageLink: '',
  );

  FutureOr<CharacterData> getCharacter(int id) {
    return CharacterData(
      id: id,
      age: '12',
      alliesAndOrganizations: 'none allies',
      armorClass: 12,
      background: null,
      diceHit: Dice.d6,
      biography: 'none bio',
      bonds: 'none bonds',
      characterName: 'none name',
      characterClass: classData,
      characterRace: raceData,
      conditions: null,
      currentHitPoints: 12,
      exhaustion: 2,
      experience: 12,
      eyeColor: 'none eye',
      hairColor: 'none hair',
      height: 'none height',
      ideology: null,
      initiative: 12,
      inspiration: true,
      knownSpells: null,
      languages: null,
      maxHitPoints: 12,
      preparedSpells: null,
      savingThrows: null,
      skills: null,
      skinColor: 'none skin',
      spellcastingAttribute: null,
      spellSlots: null,
    );
  }

  FutureOr<CharacterData> saveCharacter(CharacterData character) {
    return character.copyWith(id: 1);
  }

  FutureOr<bool> deleteCharacter(int id) {
    return true;
  }
}
