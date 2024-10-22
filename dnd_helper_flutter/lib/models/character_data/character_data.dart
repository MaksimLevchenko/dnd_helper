import 'package:dnd_helper_flutter/models/class_data/class_data.dart';
import 'package:dnd_helper_flutter/models/arms_data/arms_data.dart';
import 'package:dnd_helper_flutter/models/background_data/background_data.dart';
import 'package:dnd_helper_flutter/models/coins_data/coins_data.dart';
import 'package:dnd_helper_flutter/models/enums/ideology.dart';
import 'package:dnd_helper_flutter/models/enums/attributes.dart';
import 'package:dnd_helper_flutter/models/enums/conditions.dart';
import 'package:dnd_helper_flutter/models/enums/dice.dart';
import 'package:dnd_helper_flutter/models/enums/skills.dart';
import 'package:dnd_helper_flutter/models/race_data/race_data.dart';
import 'package:dnd_helper_flutter/models/spells_data/spells_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_data.freezed.dart';
part 'character_data.g.dart';

@freezed
class CharacterData with _$CharacterData {
  const factory CharacterData({
    required int id,
    required String characterName,
    required RaceData? characterRace,
    required ClassData? characterClass,
    required BackgroundData? background,
    required int experience,
    required Dice diceHit,
    int? maxHitPoints,
    int? currentHitPoints,
    int? temporaryHitPoints,
    int? speed,
    int? armorClass,
    @Default(false) bool inspiration,
    Conditions? conditions,
    int? exhaustion,
    @Default({
      Attributes.strength: 10,
      Attributes.dexterity: 10,
      Attributes.constitution: 10,
      Attributes.intelligence: 10,
      Attributes.wisdom: 10,
      Attributes.charisma: 10
    })
    Map<Attributes, int> attributes,
    required List<Attributes?> savingThrows,
    required List<Skills?> skillsProficiency,
    required List<Skills?> skillsExpertise,
    List<ArmsData>? attacks,
    List<SpellsData>? preparedSpells,
    List<SpellsData>? knownSpells,
    Attributes? spellcastingAttribute,
    Map<int, int>? spellSlots,
    List<String>? languages,
    List<String>? tools,
    List<String>? weapons,
    Ideology? ideology,
    String? biography,
    String? weight,
    String? height,
    String? age,
    String? hairColor,
    String? eyeColor,
    String? skinColor,
    String? alliesAndOrganizations,
    String? purpose,
    String? ideals,
    String? bonds,
    String? flaws,
    String? notes,
    CoinsData? coins,
    List<String>? equipment,
    List<String>? treasures,
  }) = _CharacterData;

  const CharacterData._();

  int get level {
    if (experience >= 355000) return 20;
    if (experience >= 305000) return 19;
    if (experience >= 265000) return 18;
    if (experience >= 225000) return 17;
    if (experience >= 195000) return 16;
    if (experience >= 165000) return 15;
    if (experience >= 140000) return 14;
    if (experience >= 120000) return 13;
    if (experience >= 100000) return 12;
    if (experience >= 85000) return 11;
    if (experience >= 64000) return 10;
    if (experience >= 48000) return 9;
    if (experience >= 34000) return 8;
    if (experience >= 23000) return 7;
    if (experience >= 14000) return 6;
    if (experience >= 6500) return 5;
    if (experience >= 2700) return 4;
    if (experience >= 900) return 3;
    if (experience >= 300) return 2;
    return 1;
  }

  int get proficiencyBonus {
    if (level >= 17) return 6;
    if (level >= 13) return 5;
    if (level >= 9) return 4;
    if (level >= 5) return 3;
    return 2;
  }

  int getModifier(Attributes attribute) {
    return (attributes[attribute]! - 10) ~/ 2;
  }

  int get initiative {
    return getModifier(Attributes.dexterity);
  }

  int get spellSaveDC {
    return spellcastingAttribute != null
        ? 8 + getModifier(spellcastingAttribute!) + proficiencyBonus
        : 0;
  }

  List<Skills> getSkillsByAttribute(Attributes attribute) {
    switch (attribute) {
      case Attributes.strength:
        return [
          Skills.athletics,
        ];
      case Attributes.dexterity:
        return [
          Skills.acrobatics,
          Skills.sleightOfHand,
          Skills.stealth,
        ];
      case Attributes.constitution:
        return [];
      case Attributes.intelligence:
        return [
          Skills.arcana,
          Skills.history,
          Skills.investigation,
          Skills.nature,
          Skills.religion,
        ];
      case Attributes.wisdom:
        return [
          Skills.animalHandling,
          Skills.insight,
          Skills.medicine,
          Skills.perception,
          Skills.survival,
        ];
      case Attributes.charisma:
        return [
          Skills.deception,
          Skills.intimidation,
          Skills.performance,
          Skills.persuasion,
        ];
    }
  }

  // String getSkillAsStringRu(Skills skill) {
  //   switch (skill) {
  //     case Skills.acrobatics:
  //     return 'АККРОБАТИКА';
  // }

  factory CharacterData.fromJson(Map<String, dynamic> json) =>
      _$CharacterDataFromJson(json);
}
