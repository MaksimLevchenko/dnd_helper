import 'package:dnd_helper_flutter/models/enums/attributes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'subrace_data.freezed.dart';
part 'subrace_data.g.dart';

@freezed
class SubraceData with _$SubraceData {
  const factory SubraceData({
    required String name,
    Map<String, String>? subraceFeatures,
    Map<Attributes, int>? attributes,
  }) = _SubraceData;

  factory SubraceData.fromJson(Map<String, dynamic> json) =>
      _$SubraceDataFromJson(json);
}
