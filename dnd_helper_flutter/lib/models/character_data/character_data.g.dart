// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CharacterDataImpl _$$CharacterDataImplFromJson(Map<String, dynamic> json) =>
    _$CharacterDataImpl(
      id: (json['id'] as num?)?.toInt(),
      characterName: json['characterName'] as String?,
      characterRace: json['characterRace'] == null
          ? null
          : RaceData.fromJson(json['characterRace'] as Map<String, dynamic>),
      characterClass: json['characterClass'] == null
          ? null
          : ClassData.fromJson(json['characterClass'] as Map<String, dynamic>),
      background: json['background'] == null
          ? null
          : BackgroundData.fromJson(json['background'] as Map<String, dynamic>),
      level: (json['level'] as num?)?.toInt(),
      experience: (json['experience'] as num?)?.toInt(),
      diceHit: $enumDecodeNullable(_$DiceEnumMap, json['diceHit']),
      maxHitPoints: (json['maxHitPoints'] as num?)?.toInt(),
      currentHitPoints: (json['currentHitPoints'] as num?)?.toInt(),
      temporaryHitPoints: (json['temporaryHitPoints'] as num?)?.toInt(),
      initiative: (json['initiative'] as num?)?.toInt(),
      speed: (json['speed'] as num?)?.toInt(),
      armorClass: (json['armorClass'] as num?)?.toInt(),
      inspiration: json['inspiration'] as bool?,
      conditions: $enumDecodeNullable(_$ConditionsEnumMap, json['conditions']),
      exhaustion: (json['exhaustion'] as num?)?.toInt(),
      attributes: (json['attributes'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry($enumDecode(_$AttributesEnumMap, k), (e as num).toInt()),
      ),
      savingThrows: (json['savingThrows'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$AttributesEnumMap, e))
          .toList(),
      skills: $enumDecodeNullable(_$SkillsEnumMap, json['skills']),
      proficiencyBonus: (json['proficiencyBonus'] as num?)?.toInt(),
      attacks: (json['attacks'] as List<dynamic>?)
          ?.map((e) => ArmsData.fromJson(e as Map<String, dynamic>))
          .toList(),
      preparedSpells: (json['preparedSpells'] as List<dynamic>?)
          ?.map((e) => SpellsData.fromJson(e as Map<String, dynamic>))
          .toList(),
      knownSpells: (json['knownSpells'] as List<dynamic>?)
          ?.map((e) => SpellsData.fromJson(e as Map<String, dynamic>))
          .toList(),
      spellcastingAttribute: $enumDecodeNullable(
          _$AttributesEnumMap, json['spellcastingAttribute']),
      spellSlots: (json['spellSlots'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(int.parse(k), (e as num).toInt()),
      ),
      languages: (json['languages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      tools:
          (json['tools'] as List<dynamic>?)?.map((e) => e as String).toList(),
      weapons:
          (json['weapons'] as List<dynamic>?)?.map((e) => e as String).toList(),
      ideology: $enumDecodeNullable(_$IdeologyEnumMap, json['ideology']),
      biography: json['biography'] as String?,
      weight: json['weight'] as String?,
      height: json['height'] as String?,
      age: json['age'] as String?,
      hairColor: json['hairColor'] as String?,
      eyeColor: json['eyeColor'] as String?,
      skinColor: json['skinColor'] as String?,
      alliesAndOrganizations: json['alliesAndOrganizations'] as String?,
      purpose: json['purpose'] as String?,
      ideals: json['ideals'] as String?,
      bonds: json['bonds'] as String?,
      flaws: json['flaws'] as String?,
      notes: json['notes'] as String?,
      coins: json['coins'] == null
          ? null
          : CoinsData.fromJson(json['coins'] as Map<String, dynamic>),
      equipment: (json['equipment'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      treasures: (json['treasures'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$CharacterDataImplToJson(_$CharacterDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'characterName': instance.characterName,
      'characterRace': instance.characterRace,
      'characterClass': instance.characterClass,
      'background': instance.background,
      'level': instance.level,
      'experience': instance.experience,
      'diceHit': _$DiceEnumMap[instance.diceHit],
      'maxHitPoints': instance.maxHitPoints,
      'currentHitPoints': instance.currentHitPoints,
      'temporaryHitPoints': instance.temporaryHitPoints,
      'initiative': instance.initiative,
      'speed': instance.speed,
      'armorClass': instance.armorClass,
      'inspiration': instance.inspiration,
      'conditions': _$ConditionsEnumMap[instance.conditions],
      'exhaustion': instance.exhaustion,
      'attributes': instance.attributes
          ?.map((k, e) => MapEntry(_$AttributesEnumMap[k]!, e)),
      'savingThrows':
          instance.savingThrows?.map((e) => _$AttributesEnumMap[e]!).toList(),
      'skills': _$SkillsEnumMap[instance.skills],
      'proficiencyBonus': instance.proficiencyBonus,
      'attacks': instance.attacks,
      'preparedSpells': instance.preparedSpells,
      'knownSpells': instance.knownSpells,
      'spellcastingAttribute':
          _$AttributesEnumMap[instance.spellcastingAttribute],
      'spellSlots':
          instance.spellSlots?.map((k, e) => MapEntry(k.toString(), e)),
      'languages': instance.languages,
      'tools': instance.tools,
      'weapons': instance.weapons,
      'ideology': _$IdeologyEnumMap[instance.ideology],
      'biography': instance.biography,
      'weight': instance.weight,
      'height': instance.height,
      'age': instance.age,
      'hairColor': instance.hairColor,
      'eyeColor': instance.eyeColor,
      'skinColor': instance.skinColor,
      'alliesAndOrganizations': instance.alliesAndOrganizations,
      'purpose': instance.purpose,
      'ideals': instance.ideals,
      'bonds': instance.bonds,
      'flaws': instance.flaws,
      'notes': instance.notes,
      'coins': instance.coins,
      'equipment': instance.equipment,
      'treasures': instance.treasures,
    };

const _$DiceEnumMap = {
  Dice.d2: 'd2',
  Dice.d4: 'd4',
  Dice.d6: 'd6',
  Dice.d8: 'd8',
  Dice.d10: 'd10',
  Dice.d12: 'd12',
  Dice.d20: 'd20',
  Dice.d100: 'd100',
};

const _$ConditionsEnumMap = {
  Conditions.blinded: 'blinded',
  Conditions.charmed: 'charmed',
  Conditions.deafened: 'deafened',
  Conditions.frightened: 'frightened',
  Conditions.grappled: 'grappled',
  Conditions.incapacitated: 'incapacitated',
  Conditions.invisible: 'invisible',
  Conditions.paralyzed: 'paralyzed',
  Conditions.petrified: 'petrified',
  Conditions.poisoned: 'poisoned',
  Conditions.prone: 'prone',
  Conditions.restrained: 'restrained',
  Conditions.stunned: 'stunned',
  Conditions.unconscious: 'unconscious',
  Conditions.exhaustion: 'exhaustion',
  Conditions.diseased: 'diseased',
};

const _$AttributesEnumMap = {
  Attributes.strength: 'strength',
  Attributes.dexterity: 'dexterity',
  Attributes.constitution: 'constitution',
  Attributes.intelligence: 'intelligence',
  Attributes.wisdom: 'wisdom',
  Attributes.charisma: 'charisma',
};

const _$SkillsEnumMap = {
  Skills.acrobatics: 'acrobatics',
  Skills.animalHandling: 'animal_handling',
  Skills.arcana: 'arcana',
  Skills.athletics: 'athletics',
  Skills.deception: 'deception',
  Skills.history: 'history',
  Skills.insight: 'insight',
  Skills.intimidation: 'intimidation',
  Skills.investigation: 'investigation',
  Skills.medicine: 'medicine',
  Skills.nature: 'nature',
  Skills.perception: 'perception',
  Skills.performance: 'performance',
  Skills.persuasion: 'persuasion',
  Skills.religion: 'religion',
  Skills.sleightOfHand: 'sleight_of_hand',
  Skills.stealth: 'stealth',
  Skills.survival: 'survival',
};

const _$IdeologyEnumMap = {
  Ideology.lawfulGood: 'lawfulGood',
  Ideology.neutralGood: 'neutralGood',
  Ideology.chaoticGood: 'chaoticGood',
  Ideology.lawfulNeutral: 'lawfulNeutral',
  Ideology.trueNeutral: 'trueNeutral',
  Ideology.chaoticNeutral: 'chaoticNeutral',
  Ideology.lawfulEvil: 'lawfulEvil',
  Ideology.neutralEvil: 'neutralEvil',
  Ideology.chaoticEvil: 'chaoticEvil',
  Ideology.unaligned: 'unaligned',
};
