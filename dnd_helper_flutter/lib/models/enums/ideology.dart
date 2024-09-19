import 'package:json_annotation/json_annotation.dart';

enum Ideology {
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

/// Converts to and from [Ideology] and [String]>.
class IdeologyConverter implements JsonConverter<Ideology?, String?> {
  /// Create a new instance of [Ideology].
  const IdeologyConverter();

  @override
  Ideology? fromJson(String? json) {
    if (json == null) return null;
    return Ideology.values
        .firstWhere((e) => e.toString().split('.').last == json);
  }

  @override
  String? toJson(Ideology? object) {
    return object?.toString().split('.').last;
  }
}
