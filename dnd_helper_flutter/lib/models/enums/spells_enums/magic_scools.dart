import 'package:json_annotation/json_annotation.dart';

enum MagicSchools {
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

/// Converts to and from [MagicSchools] and [String]>.
class MagicSchoolsConverter implements JsonConverter<MagicSchools?, String?> {
  /// Create a new instance of [MagicSchools].
  const MagicSchoolsConverter();

  @override
  MagicSchools? fromJson(String? json) {
    if (json == null) return null;
    return MagicSchools.values
        .firstWhere((e) => e.toString().split('.').last == json);
  }

  @override
  String? toJson(MagicSchools? object) {
    return object?.toString().split('.').last;
  }
}
