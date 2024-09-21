// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClassDataImpl _$$ClassDataImplFromJson(Map<String, dynamic> json) =>
    _$ClassDataImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      subClasses: (json['subClasses'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      savingThrows: (json['savingThrows'] as List<dynamic>)
          .map((e) => $enumDecode(_$AttributesEnumMap, e))
          .toList(),
      hitDice: $enumDecode(_$DiceEnumMap, json['hitDice']),
      proficienciesWeapons: (json['proficienciesWeapons'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      proficienciesArmor: (json['proficienciesArmor'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      startEquipment: (json['startEquipment'] as List<dynamic>)
          .map((e) => (e as List<dynamic>).map((e) => e as String).toList())
          .toList(),
      classFeatures: (json['classFeatures'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            int.parse(k),
            (e as List<dynamic>)
                .map((e) => Map<String, String>.from(e as Map))
                .toList()),
      ),
      description: json['description'] as String,
      imageLink: json['imageLink'] as String,
    );

Map<String, dynamic> _$$ClassDataImplToJson(_$ClassDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'subClasses': instance.subClasses,
      'savingThrows':
          instance.savingThrows.map((e) => _$AttributesEnumMap[e]!).toList(),
      'hitDice': _$DiceEnumMap[instance.hitDice]!,
      'proficienciesWeapons': instance.proficienciesWeapons,
      'proficienciesArmor': instance.proficienciesArmor,
      'startEquipment': instance.startEquipment,
      'classFeatures':
          instance.classFeatures.map((k, e) => MapEntry(k.toString(), e)),
      'description': instance.description,
      'imageLink': instance.imageLink,
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
