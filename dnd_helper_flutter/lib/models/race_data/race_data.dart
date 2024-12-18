import 'package:dnd_helper_flutter/models/attacks_data/attacks_data.dart';
import 'package:dnd_helper_flutter/models/enums/attributes.dart';
import 'package:dnd_helper_flutter/models/enums/skills.dart';
import 'package:dnd_helper_flutter/models/race_data/subrace_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'race_data.freezed.dart';
part 'race_data.g.dart';

@freezed
class RaceData with _$RaceData {
  const factory RaceData({
    required String name,
    Map<Attributes, int>? attributes,
    List<Skills>? skills,
    List<AttacksData>? attacks,
    int? speed,
    List<SubraceData>? subRaces,
    Map<String, String>? raceFeatures,
    required String imageLink,
    String? source,
  }) = _RaceData;

  factory RaceData.fromJson(Map<String, dynamic> json) =>
      _$RaceDataFromJson(json);
}
