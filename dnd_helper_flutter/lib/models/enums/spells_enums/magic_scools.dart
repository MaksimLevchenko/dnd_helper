import 'package:json_annotation/json_annotation.dart';

enum MagicScools {
  @JsonValue('abjuration')
  abjuration,
  @JsonValue('conjuration')
  conjuration,
  @JsonValue('divination')
  divination,
  @JsonValue('enchantment')
  enchantment,
  @JsonValue('evocation')
  evocation,
  @JsonValue('illusion')
  illusion,
  @JsonValue('necromancy')
  necromancy,
  @JsonValue('transmutation')
  transmutation,
}

/// Converts to and from [MagicScools] and [String]>.
class MagicScoolsConverter implements JsonConverter<MagicScools?, String?> {
  /// Create a new instance of [MagicScools].
  const MagicScoolsConverter();

  @override
  MagicScools? fromJson(String? json) {
    if (json == null) return null;
    return MagicScools.values
        .firstWhere((e) => e.toString().split('.').last == json);
  }

  @override
  String? toJson(MagicScools? object) {
    return object?.toString().split('.').last;
  }
}
