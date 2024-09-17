import 'dart:typed_data';
// import 'package:dnd_character_creator/models/enums/skills.dart';
import 'package:dnd_helper_flutter/converters/uint8list_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'race_data.freezed.dart';
part 'race_data.g.dart';

// TODO: create class RaceData
@freezed
class RaceData with _$RaceData {
  const factory RaceData(
      {String? name,
      // @SkillsConverter() Skills? skills,
      String? subClass,
      @Uint8ListConverter() required Uint8List image}) = _RaceData;

  factory RaceData.fromJson(Map<String, dynamic> json) =>
      _$RaceDataFromJson(json);
}
