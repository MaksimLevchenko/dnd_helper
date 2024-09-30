// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'background_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BackgroundDataImpl _$$BackgroundDataImplFromJson(Map<String, dynamic> json) =>
    _$BackgroundDataImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      skillProficiencies: (json['skillProficiencies'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$SkillsEnumMap, e))
          .toList(),
      toolProficiencies: json['toolProficiencies'] as String?,
      equipment: json['equipment'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$BackgroundDataImplToJson(
        _$BackgroundDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'skillProficiencies':
          instance.skillProficiencies?.map((e) => _$SkillsEnumMap[e]!).toList(),
      'toolProficiencies': instance.toolProficiencies,
      'equipment': instance.equipment,
      'description': instance.description,
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
