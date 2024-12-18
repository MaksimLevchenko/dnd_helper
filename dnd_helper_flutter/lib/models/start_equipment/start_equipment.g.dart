// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_equipment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StartEquipmentImpl _$$StartEquipmentImplFromJson(Map<String, dynamic> json) =>
    _$StartEquipmentImpl(
      eqipment: (json['eqipment'] as List<dynamic>?)
          ?.map((e) => EquipmentData.fromJson(e as Map<String, dynamic>))
          .toList(),
      arms: (json['arms'] as List<dynamic>?)
          ?.map((e) => ArmsData.fromJson(e as Map<String, dynamic>))
          .toList(),
      armor: (json['armor'] as List<dynamic>?)
          ?.map((e) => ArmorData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$StartEquipmentImplToJson(
        _$StartEquipmentImpl instance) =>
    <String, dynamic>{
      'eqipment': instance.eqipment,
      'arms': instance.arms,
      'armor': instance.armor,
    };
