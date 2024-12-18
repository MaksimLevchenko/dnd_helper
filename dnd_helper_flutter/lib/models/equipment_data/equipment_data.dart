import 'package:freezed_annotation/freezed_annotation.dart';

part 'equipment_data.freezed.dart';
part 'equipment_data.g.dart';

@freezed
class EquipmentData with _$EquipmentData {
  factory EquipmentData({
    required String name,
    required String description,
  }) = _EquipmentData;

  factory EquipmentData.fromJson(Map<String, dynamic> json) =>
      _$EquipmentDataFromJson(json);
}
