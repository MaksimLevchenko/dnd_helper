import 'package:json_annotation/json_annotation.dart';

enum Conditions {
  @JsonValue('blinded')
  blinded,
  @JsonValue('charmed')
  charmed,
  @JsonValue('deafened')
  deafened,
  @JsonValue('frightened')
  frightened,
  @JsonValue('grappled')
  grappled,
  @JsonValue('incapacitated')
  incapacitated,
  @JsonValue('invisible')
  invisible,
  @JsonValue('paralyzed')
  paralyzed,
  @JsonValue('petrified')
  petrified,
  @JsonValue('poisoned')
  poisoned,
  @JsonValue('prone')
  prone,
  @JsonValue('restrained')
  restrained,
  @JsonValue('stunned')
  stunned,
  @JsonValue('unconscious')
  unconscious,
  @JsonValue('exhaustion')
  exhaustion,
  @JsonValue('diseased')
  diseased,
}

/// Converts to and from [Conditions] and [String]>.
class DamageTypesConverter implements JsonConverter<Conditions?, String?> {
  /// Create a new instance of [Conditions].
  const DamageTypesConverter();

  @override
  Conditions? fromJson(String? json) {
    if (json == null) return null;
    return Conditions.values
        .firstWhere((e) => e.toString().split('.').last == json);
  }

  @override
  String? toJson(Conditions? object) {
    return object?.toString().split('.').last;
  }
}
