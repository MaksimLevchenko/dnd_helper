import 'package:dnd_helper_flutter/models/enums/spells_enums/action_type.dart';
import 'package:dnd_helper_flutter/models/enums/spells_enums/area_size_units.dart';
import 'package:dnd_helper_flutter/models/enums/attributes.dart';
import 'package:dnd_helper_flutter/models/enums/spells_enums/casting_resource.dart';
import 'package:dnd_helper_flutter/models/enums/spells_enums/conditions.dart';
import 'package:dnd_helper_flutter/models/enums/damage_types.dart';
import 'package:dnd_helper_flutter/models/enums/spells_enums/distanse_type.dart';
import 'package:dnd_helper_flutter/models/enums/spells_enums/duration_type.dart';
import 'package:dnd_helper_flutter/models/enums/spells_enums/magic_scools.dart';
import 'package:dnd_helper_flutter/models/enums/spells_enums/target_or_area_type.dart';
import 'package:dnd_helper_flutter/models/.class_data/class_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'spells_data.freezed.dart';
part 'spells_data.g.dart';

@freezed
class SpellsData with _$SpellsData {
  const factory SpellsData({
    @Default('name') String name,
    int? level,
    MagicScools? school,
    bool? isVerbal,
    bool? isSomatic,
    bool? isMaterial,
    String? materialComponents,
    int? castingTime,
    CastingResource? castingResource,
    int? castingResourceCost,
    String? castingConditions,
    TargetOrAreaType? targetAndAreaType,
    AreaSizeUnits? areaSizeUnits,
    int? area,
    DistanceType? distanceType,
    int? distance,
    DurationType? durationType,
    int? duration,
    ActionType? action_type,
    Attributes? savingThrow,
    String? damage,
    DamageTypes? damageType,
    String? description,
    ClassData? classes,
    String? subClasses,
    String? source,
  }) = _SpellsData;

  factory SpellsData.fromJson(Map<String, dynamic> json) =>
      _$SpellsDataFromJson(json);
}
