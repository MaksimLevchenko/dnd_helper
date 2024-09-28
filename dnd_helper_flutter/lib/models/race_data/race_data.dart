import 'package:dnd_helper_flutter/models/enums/attributes.dart';
import 'package:dnd_helper_flutter/models/enums/skills.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'race_data.freezed.dart';
part 'race_data.g.dart';

@freezed
class RaceData with _$RaceData {
  const factory RaceData({
    String? name,
    Map<Attributes, int>? attributes,
    List<Skills>? skills,
    List<String>? subRaces,
    Map<String, String>? raceFeatures,
    required String imageLink,
    String? source,
  }) = _RaceData;

  factory RaceData.fromJson(Map<String, dynamic> json) =>
      _$RaceDataFromJson(json);
}
