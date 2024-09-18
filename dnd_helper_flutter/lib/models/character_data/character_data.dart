import 'package:dnd_helper_flutter/models/.class_data/class_data.dart';
import 'package:dnd_helper_flutter/models/arms_data/arms_data.dart';
import 'package:dnd_helper_flutter/models/background_data/background_data.dart';
import 'package:dnd_helper_flutter/models/coins_data/coins_data.dart';
import 'package:dnd_helper_flutter/models/enums/attributes.dart';
import 'package:dnd_helper_flutter/models/enums/conditions.dart';
import 'package:dnd_helper_flutter/models/enums/dice.dart';
import 'package:dnd_helper_flutter/models/enums/alignment.dart';
import 'package:dnd_helper_flutter/models/enums/skills.dart';
import 'package:dnd_helper_flutter/models/.race_data.dart/race_data.dart';
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
    bool? inspyration,
    Conditions? conditions,
    int? exhaustion,
    Attributes? attributes,
    List<Attributes>? savingThrows,
    Skills? skills,
    int? proficiencyBonus,
    List<ArmsData>? attacks,
    //List<String>? preparedSpells,
    //List<String>? knownSpells,
    //List<String>? spellSlots,
    List<String>? languages,
    List<String>? tools,
    List<String>? weapons,
    Alignment? alignment,
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
    List<String>? tresuares,
  }) = _CharacterData;

  factory CharacterData.fromJson(Map<String, dynamic> json) =>
      _$CharacterDataFromJson(json);
}
