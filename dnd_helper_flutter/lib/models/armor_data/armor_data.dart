import 'dart:typed_data';
import 'package:dnd_helper_flutter/converters/uint8list_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'armor_data.freezed.dart';
part 'armor_data.g.dart';

@freezed
@JsonSerializable(explicitToJson: true)
class ArmorData with _$ArmorData {
  const factory ArmorData({
    @Default('name') String name,
    int? armorClass,
    int? weight,
    int? price,
    bool? stelsDisadvantage,
    int? minStrength,
    String? armorType,
    @Uint8ListConverter() Uint8List? image,
  }) = _ArmorData;

  factory ArmorData.fromJson(Map<String, dynamic> json) =>
      _$ArmorDataFromJson(json);
}
