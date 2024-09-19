import 'package:freezed_annotation/freezed_annotation.dart';

part 'background_data.freezed.dart';
part 'background_data.g.dart';

@freezed
class BackgroundData with _$BackgroundData {
  const factory BackgroundData({
    int? id,
    String? name,
    String? skillProficiencies,
    String? toolProficiencies,
    String? equipment,
    String? description,
  }) = _BackgroundData;

  factory BackgroundData.fromJson(Map<String, dynamic> json) =>
      _$BackgroundDataFromJson(json);
}
