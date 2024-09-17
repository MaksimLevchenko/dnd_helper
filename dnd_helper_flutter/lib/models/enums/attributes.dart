import 'package:json_annotation/json_annotation.dart';

enum Attributes {
  @JsonValue('strength')
  strength,
  @JsonValue('dexterity')
  dexterity,
  @JsonValue('constitution')
  constitution,
  @JsonValue('intelligence')
  intelligence,
  @JsonValue('wisdom')
  wisdom,
  @JsonValue('charisma')
  charisma,
}

/// Converts to and from [Attributes] and [String]>.
class AttributesConverter implements JsonConverter<Attributes?, String?> {
  /// Create a new instance of [Attributes].
  const AttributesConverter();

  @override
  Attributes? fromJson(String? json) {
    if (json == null) return null;
    return Attributes.values
        .firstWhere((e) => e.toString().split('.').last == json);
  }

  @override
  String? toJson(Attributes? object) {
    return object?.toString().split('.').last;
  }
}
