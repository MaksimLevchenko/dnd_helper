import 'package:json_annotation/json_annotation.dart';

enum DamageTypes {
  @JsonValue('bludgeoning')
  bludgeoning,
  @JsonValue('piercing')
  piercing,
  @JsonValue('slashing')
  slashing,
  @JsonValue('acid')
  acid,
  @JsonValue('cold')
  cold,
  @JsonValue('fire')
  fire,
  @JsonValue('force')
  force,
  @JsonValue('lightning')
  lightning,
  @JsonValue('necrotic')
  necrotic,
  @JsonValue('poison')
  poison,
  @JsonValue('psychic')
  psychic,
  @JsonValue('radiant')
  radiant,
  @JsonValue('thunder')
  thunder,
}

/// Converts to and from [DamageTypes] and [String]>.
class DamageTypesConverter implements JsonConverter<DamageTypes?, String?> {
  /// Create a new instance of [DamageTypes].
  const DamageTypesConverter();

  @override
  DamageTypes? fromJson(String? json) {
    if (json == null) return null;
    return DamageTypes.values
        .firstWhere((e) => e.toString().split('.').last == json);
  }

  @override
  String? toJson(DamageTypes? object) {
    return object?.toString().split('.').last;
  }
}
