// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spells_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpellsDataImpl _$$SpellsDataImplFromJson(Map<String, dynamic> json) =>
    _$SpellsDataImpl(
      name: json['name'] as String? ?? 'name',
      level: (json['level'] as num?)?.toInt(),
      school: $enumDecodeNullable(_$MagicScoolsEnumMap, json['school']),
      isVerbal: json['isVerbal'] as bool?,
      isSomatic: json['isSomatic'] as bool?,
      isMaterial: json['isMaterial'] as bool?,
      materialComponents: json['materialComponents'] as String?,
      castingTime: (json['castingTime'] as num?)?.toInt(),
      castingResource: $enumDecodeNullable(
          _$CastingResourceEnumMap, json['castingResource']),
      castingResourceCost: (json['castingResourceCost'] as num?)?.toInt(),
      castingConditions: json['castingConditions'] as String?,
      targetAndAreaType: $enumDecodeNullable(
          _$TargetOrAreaTypeEnumMap, json['targetAndAreaType']),
      areaSizeUnits:
          $enumDecodeNullable(_$AreaSizeUnitsEnumMap, json['areaSizeUnits']),
      area: (json['area'] as num?)?.toInt(),
      distanceType:
          $enumDecodeNullable(_$DistanceTypeEnumMap, json['distanceType']),
      distance: (json['distance'] as num?)?.toInt(),
      durationType:
          $enumDecodeNullable(_$DurationTypeEnumMap, json['durationType']),
      duration: (json['duration'] as num?)?.toInt(),
      actionType: $enumDecodeNullable(_$ActionTypeEnumMap, json['actionType']),
      savingThrow:
          $enumDecodeNullable(_$AttributesEnumMap, json['savingThrow']),
      damage: json['damage'] as String?,
      damageType: $enumDecodeNullable(_$DamageTypesEnumMap, json['damageType']),
      description: json['description'] as String?,
      classes: json['classes'] == null
          ? null
          : ClassData.fromJson(json['classes'] as Map<String, dynamic>),
      subClasses: json['subClasses'] as String?,
      source: json['source'] as String?,
    );

Map<String, dynamic> _$$SpellsDataImplToJson(_$SpellsDataImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'level': instance.level,
      'school': _$MagicScoolsEnumMap[instance.school],
      'isVerbal': instance.isVerbal,
      'isSomatic': instance.isSomatic,
      'isMaterial': instance.isMaterial,
      'materialComponents': instance.materialComponents,
      'castingTime': instance.castingTime,
      'castingResource': _$CastingResourceEnumMap[instance.castingResource],
      'castingResourceCost': instance.castingResourceCost,
      'castingConditions': instance.castingConditions,
      'targetAndAreaType':
          _$TargetOrAreaTypeEnumMap[instance.targetAndAreaType],
      'areaSizeUnits': _$AreaSizeUnitsEnumMap[instance.areaSizeUnits],
      'area': instance.area,
      'distanceType': _$DistanceTypeEnumMap[instance.distanceType],
      'distance': instance.distance,
      'durationType': _$DurationTypeEnumMap[instance.durationType],
      'duration': instance.duration,
      'actionType': _$ActionTypeEnumMap[instance.actionType],
      'savingThrow': _$AttributesEnumMap[instance.savingThrow],
      'damage': instance.damage,
      'damageType': _$DamageTypesEnumMap[instance.damageType],
      'description': instance.description,
      'classes': instance.classes,
      'subClasses': instance.subClasses,
      'source': instance.source,
    };

const _$MagicScoolsEnumMap = {
  MagicScools.abjuration: 'abjuration',
  MagicScools.conjuration: 'conjuration',
  MagicScools.divination: 'divination',
  MagicScools.enchantment: 'enchantment',
  MagicScools.evocation: 'evocation',
  MagicScools.illusion: 'illusion',
  MagicScools.necromancy: 'necromancy',
  MagicScools.transmutation: 'transmutation',
};

const _$CastingResourceEnumMap = {
  CastingResource.action: 'action',
  CastingResource.bonusAction: 'bonus_action',
  CastingResource.reaction: 'reaction',
  CastingResource.minute: 'minute',
  CastingResource.hour: 'hour',
  CastingResource.day: 'day',
  CastingResource.special: 'special',
};

const _$TargetOrAreaTypeEnumMap = {
  TargetOrAreaType.self: 'self',
  TargetOrAreaType.creature: 'creature',
  TargetOrAreaType.point: 'point',
  TargetOrAreaType.object: 'object',
  TargetOrAreaType.area: 'area',
  TargetOrAreaType.line: 'line',
  TargetOrAreaType.cone: 'cone',
  TargetOrAreaType.cube: 'cube',
  TargetOrAreaType.sphere: 'sphere',
  TargetOrAreaType.hemisphere: 'hemisphere',
  TargetOrAreaType.wall: 'wall',
  TargetOrAreaType.ring: 'ring',
  TargetOrAreaType.cylinder: 'cylinder',
  TargetOrAreaType.radius: 'radius',
  TargetOrAreaType.special: 'special',
};

const _$AreaSizeUnitsEnumMap = {
  AreaSizeUnits.feet: 'feet',
  AreaSizeUnits.miles: 'miles',
  AreaSizeUnits.special: 'special',
};

const _$DistanceTypeEnumMap = {
  DistanceType.touch: 'touch',
  DistanceType.sight: 'sight',
  DistanceType.unlimited: 'unlimited',
  DistanceType.special: 'special',
  DistanceType.feet: 'feet',
  DistanceType.miles: 'miles',
};

const _$DurationTypeEnumMap = {
  DurationType.instantaneous: 'instantaneous',
  DurationType.round: 'round',
  DurationType.minute: 'minute',
  DurationType.hour: 'hour',
  DurationType.day: 'day',
  DurationType.special: 'special',
  DurationType.permanentUntilDispel: 'permanentUntilDispel',
  DurationType.permanentUntilDispelOrTriggered:
      'permanent_until_dispel_or_triggered',
};

const _$ActionTypeEnumMap = {
  ActionType.support: 'support',
  ActionType.melee: 'melee',
  ActionType.ranged: 'ranged',
  ActionType.other: 'other',
  ActionType.healing: 'healing',
  ActionType.savingThrow: 'savingThrow',
};

const _$AttributesEnumMap = {
  Attributes.strength: 'strength',
  Attributes.dexterity: 'dexterity',
  Attributes.constitution: 'constitution',
  Attributes.intelligence: 'intelligence',
  Attributes.wisdom: 'wisdom',
  Attributes.charisma: 'charisma',
};

const _$DamageTypesEnumMap = {
  DamageTypes.bludgeoning: 'bludgeoning',
  DamageTypes.piercing: 'piercing',
  DamageTypes.slashing: 'slashing',
  DamageTypes.acid: 'acid',
  DamageTypes.cold: 'cold',
  DamageTypes.fire: 'fire',
  DamageTypes.force: 'force',
  DamageTypes.lightning: 'lightning',
  DamageTypes.necrotic: 'necrotic',
  DamageTypes.poison: 'poison',
  DamageTypes.psychic: 'psychic',
  DamageTypes.radiant: 'radiant',
  DamageTypes.thunder: 'thunder',
};
