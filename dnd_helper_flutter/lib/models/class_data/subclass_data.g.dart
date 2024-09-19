// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subclass_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubclassDataImpl _$$SubclassDataImplFromJson(Map<String, dynamic> json) =>
    _$SubclassDataImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      parentClass: json['parentClass'] as String?,
      subclassFeatures:
          (json['subclassFeatures'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            int.parse(k),
            (e as List<dynamic>)
                .map((e) => Map<String, String>.from(e as Map))
                .toList()),
      ),
      subclassSpells: (json['subclassSpells'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            int.parse(k),
            (e as Map<String, dynamic>).map(
              (k, e) => MapEntry(int.parse(k), e as String),
            )),
      ),
      subclassSkills: (json['subclassSkills'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(int.parse(k), e as String),
      ),
    );

Map<String, dynamic> _$$SubclassDataImplToJson(_$SubclassDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'parentClass': instance.parentClass,
      'subclassFeatures':
          instance.subclassFeatures?.map((k, e) => MapEntry(k.toString(), e)),
      'subclassSpells': instance.subclassSpells?.map((k, e) =>
          MapEntry(k.toString(), e.map((k, e) => MapEntry(k.toString(), e)))),
      'subclassSkills':
          instance.subclassSkills?.map((k, e) => MapEntry(k.toString(), e)),
    };
