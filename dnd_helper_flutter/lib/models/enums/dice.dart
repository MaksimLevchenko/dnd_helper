import 'package:json_annotation/json_annotation.dart';

enum Dice {
  @JsonValue('d2')
  d2,
  @JsonValue('d4')
  d4,
  @JsonValue('d6')
  d6,
  @JsonValue('d8')
  d8,
  @JsonValue('d10')
  d10,
  @JsonValue('d12')
  d12,
  @JsonValue('d20')
  d20,
  @JsonValue('d100')
  d100,
}

/// Converts to and from [Dice] and [String]>.
class DiceConverter implements JsonConverter<Dice?, String?> {
  /// Create a new instance of [Dice].
  const DiceConverter();

  @override
  Dice? fromJson(String? json) {
    if (json == null) return null;
    return Dice.values.firstWhere((e) => e.toString().split('.').last == json);
  }

  @override
  String? toJson(Dice? object) {
    return object?.toString().split('.').last;
  }
}
