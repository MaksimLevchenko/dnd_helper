import 'package:json_annotation/json_annotation.dart';

enum CastingResource {
  @JsonValue('action')
  action,
  @JsonValue('bonus_action')
  bonusAction,
  @JsonValue('reaction')
  reaction,
  @JsonValue('minute')
  minute,
  @JsonValue('hour')
  hour,
  @JsonValue('day')
  day,
  @JsonValue('special')
  special,
}

/// Converts to and from [CastingResource] and [String]>.
class CastingResourceConverter
    implements JsonConverter<CastingResource?, String?> {
  /// Create a new instance of [CastingResource].
  const CastingResourceConverter();

  @override
  CastingResource? fromJson(String? json) {
    if (json == null) return null;
    return CastingResource.values
        .firstWhere((e) => e.toString().split('.').last == json);
  }

  @override
  String? toJson(CastingResource? object) {
    return object?.toString().split('.').last;
  }
}
