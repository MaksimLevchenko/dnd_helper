// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'arms_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArmsDataImpl _$$ArmsDataImplFromJson(Map<String, dynamic> json) =>
    _$ArmsDataImpl(
      name: json['name'] as String? ?? 'name',
      isSimple: json['isSimple'] as bool?,
      isMelee: json['isMelee'] as bool?,
      price: json['price'] == null
          ? null
          : CoinsData.fromJson(json['price'] as Map<String, dynamic>),
      damage: $enumDecodeNullable(_$DiceEnumMap, json['damage']),
      damageType:
          const DamageTypesConverter().fromJson(json['damageType'] as String?),
      weight: (json['weight'] as num?)?.toDouble(),
      armsFeatures: (json['armsFeatures'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      image: _$JsonConverterFromJson<List<dynamic>, Uint8List>(
          json['image'], const Uint8ListConverter().fromJson),
    );

Map<String, dynamic> _$$ArmsDataImplToJson(_$ArmsDataImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'isSimple': instance.isSimple,
      'isMelee': instance.isMelee,
      'price': instance.price,
      'damage': _$DiceEnumMap[instance.damage],
      'damageType': const DamageTypesConverter().toJson(instance.damageType),
      'weight': instance.weight,
      'armsFeatures': instance.armsFeatures,
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
