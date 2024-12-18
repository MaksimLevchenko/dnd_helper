// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attacks_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttacksDataImpl _$$AttacksDataImplFromJson(Map<String, dynamic> json) =>
    _$AttacksDataImpl(
      name: json['name'] as String,
      damage: $enumDecode(_$DiceEnumMap, json['damage']),
      range: (json['range'] as num).toInt(),
      damageType: $enumDecode(_$DamageTypesEnumMap, json['damageType']),
      actionCost: $enumDecode(_$ActionTypesEnumMap, json['actionCost']),
    );

Map<String, dynamic> _$$AttacksDataImplToJson(_$AttacksDataImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'damage': _$DiceEnumMap[instance.damage]!,
      'range': instance.range,
      'damageType': _$DamageTypesEnumMap[instance.damageType]!,
      'actionCost': _$ActionTypesEnumMap[instance.actionCost]!,
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

const _$ActionTypesEnumMap = {
  ActionTypes.action: 'action',
  ActionTypes.bonusAction: 'bonusAction',
  ActionTypes.reaction: 'reaction',
  ActionTypes.freeAction: 'freeAction',
  ActionTypes.movement: 'movement',
};
