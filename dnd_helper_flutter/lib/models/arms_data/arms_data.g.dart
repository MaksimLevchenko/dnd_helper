// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'arms_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$ArmsDataToJson(ArmsData instance) => <String, dynamic>{
      'name': instance.name,
      'damage': _$DiceEnumMap[instance.damage],
      'weight': instance.weight,
      'price': instance.price,
      'modifier': const AttributesConverter().toJson(instance.modifier),
      'isProficient': instance.isProficient,
      'damageType': const DamageTypesConverter().toJson(instance.damageType),
      'image': _$JsonConverterToJson<List<dynamic>, Uint8List>(
          instance.image, const Uint8ListConverter().toJson),
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

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

_$ArmsDataImpl _$$ArmsDataImplFromJson(Map<String, dynamic> json) =>
    _$ArmsDataImpl(
      name: json['name'] as String? ?? 'name',
      damage: $enumDecodeNullable(_$DiceEnumMap, json['damage']),
      weight: (json['weight'] as num?)?.toInt(),
      price: (json['price'] as num?)?.toInt(),
      modifier:
          const AttributesConverter().fromJson(json['modifier'] as String?),
      isProficient: json['isProficient'] as bool?,
      damageType:
          const DamageTypesConverter().fromJson(json['damageType'] as String?),
      image: _$JsonConverterFromJson<List<dynamic>, Uint8List>(
          json['image'], const Uint8ListConverter().fromJson),
    );

Map<String, dynamic> _$$ArmsDataImplToJson(_$ArmsDataImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'damage': _$DiceEnumMap[instance.damage],
      'weight': instance.weight,
      'price': instance.price,
      'modifier': const AttributesConverter().toJson(instance.modifier),
      'isProficient': instance.isProficient,
      'damageType': const DamageTypesConverter().toJson(instance.damageType),
      'image': _$JsonConverterToJson<List<dynamic>, Uint8List>(
          instance.image, const Uint8ListConverter().toJson),
    };
