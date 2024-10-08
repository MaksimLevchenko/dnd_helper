// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'armor_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArmorDataImpl _$$ArmorDataImplFromJson(Map<String, dynamic> json) =>
    _$ArmorDataImpl(
      name: json['name'] as String? ?? 'name',
      armorClass: (json['armorClass'] as num?)?.toInt(),
      grantsDexterityBonus: json['grantsDexterityBonus'] as bool?,
      maxDexterityBonus: (json['maxDexterityBonus'] as num?)?.toInt(),
      weight: (json['weight'] as num?)?.toInt(),
      price: json['price'] == null
          ? null
          : CoinsData.fromJson(json['price'] as Map<String, dynamic>),
      stelsDisadvantage: json['stelsDisadvantage'] as bool?,
      minStrength: (json['minStrength'] as num?)?.toInt(),
      armorType: json['armorType'] as String?,
      image: _$JsonConverterFromJson<List<dynamic>, Uint8List>(
          json['image'], const Uint8ListConverter().fromJson),
    );

Map<String, dynamic> _$$ArmorDataImplToJson(_$ArmorDataImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'armorClass': instance.armorClass,
      'grantsDexterityBonus': instance.grantsDexterityBonus,
      'maxDexterityBonus': instance.maxDexterityBonus,
      'weight': instance.weight,
      'price': instance.price,
      'stelsDisadvantage': instance.stelsDisadvantage,
      'minStrength': instance.minStrength,
      'armorType': instance.armorType,
      'image': _$JsonConverterToJson<List<dynamic>, Uint8List>(
          instance.image, const Uint8ListConverter().toJson),
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
