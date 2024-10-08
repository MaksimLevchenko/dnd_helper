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
    int? id,
    String? characterName,
    RaceData? characterRace,
    ClassData? characterClass,
    BackgroundData? background,
    int? level,
    int? experience,
    Dice? diceHit,
    int? maxHitPoints,
    int? currentHitPoints,
    int? temporaryHitPoints,
    int? initiative,
    int? speed,
    int? armorClass,
    bool? inspiration, // Исправлено название
    Conditions? conditions,
    int? exhaustion,
    Map<Attributes, int>? attributes,
    List<Attributes>? savingThrows,
    Map<Skills, bool>? skills,
    int? proficiencyBonus,
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
    List<String>? treasures, // Исправлено название
  }) = _CharacterData;

  factory CharacterData.fromJson(Map<String, dynamic> json) =>
      _$CharacterDataFromJson(json);
}
