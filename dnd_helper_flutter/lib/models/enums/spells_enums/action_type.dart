import 'package:json_annotation/json_annotation.dart';

enum ActionType {
  @JsonValue("support")
  support,
  @JsonValue("melee")
  melee,
  @JsonValue("ranged")
  ranged,
  @JsonValue("other")
  other,
  @JsonValue("healing")
  healing,
  @JsonValue("savingThrow")
  savingThrow,
}

/// Converts to and from [ActionType] and [String]>.
class ActionTypeConverter implements JsonConverter<ActionType?, String?> {
  /// Create a new instance of [ActionType].
  const ActionTypeConverter();

  @override
  ActionType? fromJson(String? json) {
    if (json == null) return null;
    return ActionType.values
        .firstWhere((e) => e.toString().split('.').last == json);
  }

  @override
  String? toJson(ActionType? object) {
    return object?.toString().split('.').last;
  }
}
