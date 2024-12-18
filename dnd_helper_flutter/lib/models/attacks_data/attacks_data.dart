import 'package:dnd_helper_flutter/models/enums/actions.dart';
import 'package:dnd_helper_flutter/models/enums/damage_types.dart';
import 'package:dnd_helper_flutter/models/enums/dice.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'attacks_data.freezed.dart';
part 'attacks_data.g.dart';

@freezed
class AttacksData with _$AttacksData {
  factory AttacksData(
      {required String name,
      required Dice damage,
      required int range,
      required DamageTypes damageType,
      required ActionTypes actionCost}) = _AttacksData;

  factory AttacksData.fromJson(Map<String, dynamic> json) =>
      _$AttacksDataFromJson(json);
}
