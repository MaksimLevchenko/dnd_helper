import 'package:dnd_helper_flutter/models/enums/attributes.dart';
import 'package:dnd_helper_flutter/models/enums/dice.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'class_data.freezed.dart';
part 'class_data.g.dart';

@freezed
class ClassData with _$ClassData {
  const factory ClassData({
    required int id,
    required String name,
    required List<String> subClasses,
    required List<Attributes> savingThrows,
    required Dice hitDice,
    required List<String> proficienciesWeapons,
    required List<String> proficienciesArmor,
    required List<List<String>> startEquipment,
    required Map<int, List<Map<String, String>>> classFeatures,
    required String description,
    required String imageLink,
    required String source,
  }) = _ClassData;

  factory ClassData.fromJson(Map<String, dynamic> json) =>
      _$ClassDataFromJson(json);
}
