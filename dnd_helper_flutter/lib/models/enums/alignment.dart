import 'package:json_annotation/json_annotation.dart';

enum Alignment {
  @JsonValue('lawfulGood')
  lawfulGood,
  @JsonValue('neutralGood')
  neutralGood,
  @JsonValue('chaoticGood')
  chaoticGood,
  @JsonValue('lawfulNeutral')
  lawfulNeutral,
  @JsonValue('trueNeutral')
  trueNeutral,
  @JsonValue('chaoticNeutral')
  chaoticNeutral,
  @JsonValue('lawfulEvil')
  lawfulEvil,
  @JsonValue('neutralEvil')
  neutralEvil,
  @JsonValue('chaoticEvil')
  chaoticEvil,
  @JsonValue('unaligned')
  unaligned,
}

/// Converts to and from [Alignment] and [String]>.
class AttributesConverter implements JsonConverter<Alignment?, String?> {
  /// Create a new instance of [Alignment].
  const AttributesConverter();

  @override
  Alignment? fromJson(String? json) {
    if (json == null) return null;
    return Alignment.values
        .firstWhere((e) => e.toString().split('.').last == json);
  }

  @override
  String? toJson(Alignment? object) {
    return object?.toString().split('.').last;
  }
}
