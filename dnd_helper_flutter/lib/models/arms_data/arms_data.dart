import 'dart:typed_data';
import 'package:dnd_helper_flutter/converters/uint8list_converter.dart';
import 'package:dnd_helper_flutter/models/enums/attributes.dart';
import 'package:dnd_helper_flutter/models/enums/damage_types.dart';
import 'package:dnd_helper_flutter/models/enums/dice.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'arms_data.freezed.dart';
part 'arms_data.g.dart';

@freezed
@JsonSerializable(explicitToJson: true)
class ArmsData with _$ArmsData {
  const factory ArmsData({
    @Default('name') String name,
    Dice? damage,
    int? weight,
    int? price,
    @AttributesConverter() Attributes? modifier,
    bool? isProficient,
    @DamageTypesConverter() DamageTypes? damageType,
    @Uint8ListConverter() Uint8List? image,
  }) = _ArmsData;

  factory ArmsData.fromJson(Map<String, dynamic> json) =>
      _$ArmsDataFromJson(json);
}
