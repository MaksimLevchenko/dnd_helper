import 'dart:typed_data';
import 'package:dnd_helper_flutter/domain/converters/uint8list_converter.dart';
import 'package:dnd_helper_flutter/models/coins_data/coins_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'armor_data.freezed.dart';
part 'armor_data.g.dart';

@freezed
class ArmorData with _$ArmorData {
  const factory ArmorData({
    @Default('name') String name,
    int? armorClass,
    bool? grantsDexterityBonus,
    int? maxDexterityBonus,
    int? weight,
    CoinsData? price,
    bool? stelsDisadvantage,
    int? minStrength,
    String? armorType,
    @Uint8ListConverter() Uint8List? image,
  }) = _ArmorData;

  factory ArmorData.fromJson(Map<String, dynamic> json) =>
      _$ArmorDataFromJson(json);
}
