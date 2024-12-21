import 'dart:typed_data';
import 'package:dnd_helper_flutter/domain/converters/uint8list_converter.dart';
import 'package:dnd_helper_flutter/models/coins_data/coins_data.dart';
import 'package:dnd_helper_flutter/models/enums/damage_types.dart';
import 'package:dnd_helper_flutter/models/enums/dice.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'arms_data.freezed.dart';
part 'arms_data.g.dart';

@freezed
class ArmsData with _$ArmsData {
  const factory ArmsData({
    @Default('name') String name,
    bool? isSimple,
    bool? isMelee,
    CoinsData? price,
    Dice? damage,
    @DamageTypesConverter() DamageTypes? damageType,
    double? weight,
    List<String>? armsFeatures,
    @Uint8ListConverter() Uint8List? image,
  }) = _ArmsData;

  factory ArmsData.fromJson(Map<String, dynamic> json) =>
      _$ArmsDataFromJson(json);
}

@freezed
class StartArms with _$StartArms {
  factory StartArms({
    ArmsData? specificArms, // Конкретное оружие
    required bool isOption, // Указывает, что это выбор
    List<ArmsData>? options, // Список вариантов для выбора
  }) = _StartArms;
}
