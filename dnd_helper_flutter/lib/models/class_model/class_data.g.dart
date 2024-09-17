// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClassDataImpl _$$ClassDataImplFromJson(Map<String, dynamic> json) =>
    _$ClassDataImpl(
      name: json['name'] as String?,
      level: (json['level'] as num?)?.toInt(),
      abilities: (json['abilities'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      subClass: json['subClass'] as String?,
      image: const Uint8ListConverter().fromJson(json['image'] as List),
    );

Map<String, dynamic> _$$ClassDataImplToJson(_$ClassDataImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'level': instance.level,
      'abilities': instance.abilities,
      'subClass': instance.subClass,
      'image': const Uint8ListConverter().toJson(instance.image),
    };
