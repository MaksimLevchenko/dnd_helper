import 'package:freezed_annotation/freezed_annotation.dart';

enum ActionTypes {
  @JsonValue('action')
  action,
  @JsonValue('bonusAction')
  bonusAction,
  @JsonValue('reaction')
  reaction,
  @JsonValue('freeAction')
  freeAction,
  @JsonValue('movement')
  movement,
}

extension ActionTypesExtension on ActionTypes {
  String get value {
    switch (this) {
      case ActionTypes.action:
        return 'action';
      case ActionTypes.bonusAction:
        return 'bonusAction';
      case ActionTypes.reaction:
        return 'reaction';
      case ActionTypes.freeAction:
        return 'freeAction';
      case ActionTypes.movement:
        return 'movement';
    }
  }
}

/// Converts to and from [ActionTypes] and [String]>.
class ActionTypesConverter implements JsonConverter<ActionTypes?, String?> {
  /// Create a new instance of [ActionTypes].
  const ActionTypesConverter();

  @override
  ActionTypes? fromJson(String? json) {
    if (json == null) return null;
    return ActionTypes.values
        .firstWhere((e) => e.toString().split('.').last == json);
  }

  @override
  String? toJson(ActionTypes? object) {
    return object?.toString().split('.').last;
  }
}
