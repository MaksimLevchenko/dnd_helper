import 'package:freezed_annotation/freezed_annotation.dart';

part 'background_data.freezed.dart';
part 'background_data.g.dart';

//TODO: Add more fields
@freezed
class BackgroundData with _$BackgroundData {
  const factory BackgroundData({
    int? id,
    String? name,
  }) = _BackgroundData;

  factory BackgroundData.fromJson(Map<String, dynamic> json) =>
      _$BackgroundDataFromJson(json);
}
