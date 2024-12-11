// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subrace_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubraceDataImpl _$$SubraceDataImplFromJson(Map<String, dynamic> json) =>
    _$SubraceDataImpl(
      name: json['name'] as String?,
      subraceFeatures: (json['subraceFeatures'] as List<dynamic>?)
          ?.map((e) => Map<String, String>.from(e as Map))
          .toList(),
      attributes: (json['attributes'] as List<dynamic>?)
          ?.map((e) => (e as Map<String, dynamic>).map(
                (k, e) => MapEntry(
                    $enumDecode(_$AttributesEnumMap, k), (e as num).toInt()),
              ))
          .toList(),
    );

Map<String, dynamic> _$$SubraceDataImplToJson(_$SubraceDataImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'subraceFeatures': instance.subraceFeatures,
      'attributes': instance.attributes
          ?.map((e) => e.map((k, e) => MapEntry(_$AttributesEnumMap[k]!, e)))
          .toList(),
    };

const _$AttributesEnumMap = {
  Attributes.strength: 'strength',
  Attributes.dexterity: 'dexterity',
  Attributes.constitution: 'constitution',
  Attributes.intelligence: 'intelligence',
  Attributes.wisdom: 'wisdom',
  Attributes.charisma: 'charisma',
};
