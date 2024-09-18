import 'package:json_annotation/json_annotation.dart';

enum TargetOrAreaType {
  @JsonValue('self')
  self,
  @JsonValue('creature')
  creature,
  @JsonValue('point')
  point,
  @JsonValue('object')
  object,
  @JsonValue('area')
  area,
  @JsonValue('line')
  line,
  @JsonValue('cone')
  cone,
  @JsonValue('cube')
  cube,
  @JsonValue('sphere')
  sphere,
  @JsonValue('hemisphere')
  hemisphere,
  @JsonValue('wall')
  wall,
  @JsonValue('ring')
  ring,
  @JsonValue('cylinder')
  cylinder,
  @JsonValue('radius')
  radius,
  @JsonValue('special')
  special,
}

/// Converts to and from [TargetOrAreaType] and [String]>.
class TargetOrAreaTypeConverter implements JsonConverter<TargetOrAreaType?, String?> {
  /// Create a new instance of [TargetOrAreaType].
  const TargetOrAreaTypeConverter();

  @override
  TargetOrAreaType? fromJson(String? json) {
    if (json == null) return null;
    return TargetOrAreaType.values
        .firstWhere((e) => e.toString().split('.').last == json);
  }

  @override
  String? toJson(TargetOrAreaType? object) {
    return object?.toString().split('.').last;
  }
}
