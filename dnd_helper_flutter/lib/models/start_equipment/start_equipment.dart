import 'package:dnd_helper_flutter/models/armor_data/armor_data.dart';
import 'package:dnd_helper_flutter/models/arms_data/arms_data.dart';
import 'package:dnd_helper_flutter/models/equipment_data/equipment_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'start_equipment.freezed.dart';
part 'start_equipment.g.dart';

@freezed
class StartEquipment with _$StartEquipment {
  factory StartEquipment({
    List<EquipmentData>? eqipment,
    List<ArmsData>? arms,
    List<ArmorData>? armor,
  }) = _StartEquipment;

  factory StartEquipment.fromJson(Map<String, dynamic> json) =>
      _$StartEquipmentFromJson(json);
}
