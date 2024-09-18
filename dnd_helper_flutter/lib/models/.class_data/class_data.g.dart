// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClassDataImpl _$$ClassDataImplFromJson(Map<String, dynamic> json) =>
    _$ClassDataImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      abilities: (json['abilities'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      subClass: json['subClass'] as String?,
      savingThrows: (json['savingThrows'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$AttributesEnumMap, e))
          .toList(),
      hitDice: $enumDecodeNullable(_$DiceEnumMap, json['hitDice']),
      proficienciesWeapons: (json['proficienciesWeapons'] as List<dynamic>?)
          ?.map((e) => ArmsData.fromJson(e as Map<String, dynamic>))
          .toList(),
      proficienciesArmor: (json['proficienciesArmor'] as List<dynamic>?)
          ?.map((e) => ArmorData.fromJson(e as Map<String, dynamic>))
          .toList(),
      startEquipment: (json['startEquipment'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      classFeatures: (json['classFeatures'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      image: const Uint8ListConverter().fromJson(json['image'] as List),
    );

Map<String, dynamic> _$$ClassDataImplToJson(_$ClassDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'abilities': instance.abilities,
      'subClass': instance.subClass,
      'savingThrows':
          instance.savingThrows?.map((e) => _$AttributesEnumMap[e]!).toList(),
      'hitDice': _$DiceEnumMap[instance.hitDice],
      'proficienciesWeapons': instance.proficienciesWeapons,
      'proficienciesArmor': instance.proficienciesArmor,
      'startEquipment': instance.startEquipment,
      'classFeatures': instance.classFeatures,
      'image': const Uint8ListConverter().toJson(instance.image),
    };

const _$AttributesEnumMap = {
  Attributes.strength: 'strength',
  Attributes.dexterity: 'dexterity',
  Attributes.constitution: 'constitution',
  Attributes.intelligence: 'intelligence',
  Attributes.wisdom: 'wisdom',
  Attributes.charisma: 'charisma',
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
