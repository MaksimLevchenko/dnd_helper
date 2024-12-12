// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'race_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RaceDataImpl _$$RaceDataImplFromJson(Map<String, dynamic> json) =>
    _$RaceDataImpl(
      name: json['name'] as String,
      attributes: (json['attributes'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry($enumDecode(_$AttributesEnumMap, k), (e as num).toInt()),
      ),
      skills: (json['skills'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$SkillsEnumMap, e))
          .toList(),
      subRaces: (json['subRaces'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      raceFeatures: (json['raceFeatures'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      imageLink: json['imageLink'] as String,
      source: json['source'] as String?,
    );

Map<String, dynamic> _$$RaceDataImplToJson(_$RaceDataImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'attributes': instance.attributes
          ?.map((k, e) => MapEntry(_$AttributesEnumMap[k]!, e)),
      'skills': instance.skills?.map((e) => _$SkillsEnumMap[e]!).toList(),
      'subRaces': instance.subRaces,
      'raceFeatures': instance.raceFeatures,
      'imageLink': instance.imageLink,
      'source': instance.source,
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
