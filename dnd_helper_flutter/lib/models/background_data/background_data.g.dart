// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'background_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BackgroundDataImpl _$$BackgroundDataImplFromJson(Map<String, dynamic> json) =>
    _$BackgroundDataImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      skillProficiencies: json['skillProficiencies'] as String?,
      toolProficiencies: json['toolProficiencies'] as String?,
      equipment: json['equipment'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$BackgroundDataImplToJson(
        _$BackgroundDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'skillProficiencies': instance.skillProficiencies,
      'toolProficiencies': instance.toolProficiencies,
      'equipment': instance.equipment,
      'description': instance.description,
    };
