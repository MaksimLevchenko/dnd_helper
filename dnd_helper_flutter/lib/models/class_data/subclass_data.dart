import 'package:freezed_annotation/freezed_annotation.dart';

part 'subclass_data.freezed.dart';
part 'subclass_data.g.dart';

@freezed
class SubclassData with _$SubclassData {
  const factory SubclassData({
    int? id,
    String? name,
    String? description,
    String? parentClass,
    // lvl: [name: desc, name: desc]
    Map<int, List<Map<String, String>>>? subclassFeatures,
    Map<int, Map<int, String>>? subclassSpells,
    Map<int, String>? subclassSkills,
  }) = _SubclassData;

  factory SubclassData.fromJson(Map<String, dynamic> json) =>
      _$SubclassDataFromJson(json);
}
