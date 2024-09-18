import 'dart:typed_data';
import 'package:dnd_helper_flutter/converters/uint8list_converter.dart';
import 'package:dnd_helper_flutter/models/armor_data/armor_data.dart';
import 'package:dnd_helper_flutter/models/arms_data/arms_data.dart';
import 'package:dnd_helper_flutter/models/enums/attributes.dart';
import 'package:dnd_helper_flutter/models/enums/dice.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'class_data.freezed.dart';
part 'class_data.g.dart';

@freezed
class ClassData with _$ClassData {
  const factory ClassData(
      {int? id,
      String? name,
      List<String>? abilities,
      String? subClass,
      List<Attributes>? savingThrows,
      Dice? hitDice,
      List<ArmsData>? proficienciesWeapons,
      List<ArmorData>? proficienciesArmor,
      List<String>? startEquipment,
      Map<String, String>? classFeatures,
      @Uint8ListConverter() required Uint8List image}) = _ClassData;

  factory ClassData.fromJson(Map<String, dynamic> json) =>
      _$ClassDataFromJson(json);
}
