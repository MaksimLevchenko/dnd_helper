// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'race_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RaceDataImpl _$$RaceDataImplFromJson(Map<String, dynamic> json) =>
    _$RaceDataImpl(
      name: json['name'] as String?,
      subClass: json['subClass'] as String?,
      image: const Uint8ListConverter().fromJson(json['image'] as List),
    );

Map<String, dynamic> _$$RaceDataImplToJson(_$RaceDataImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'subClass': instance.subClass,
      'image': const Uint8ListConverter().toJson(instance.image),
    };
