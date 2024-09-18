import 'package:json_annotation/json_annotation.dart';

enum DurationType {
  @JsonValue('instantaneous')
  instantaneous,
  @JsonValue('round')
  round,
  @JsonValue('minute')
  minute,
  @JsonValue('hour')
  hour,
  @JsonValue('day')
  day,
  @JsonValue('special')
  special,
  @JsonValue('permanentUntilDispel')
  permanentUntilDispel,
  @JsonValue('permanent_until_dispel_or_triggered')
  permanentUntilDispelOrTriggered,
}

/// Converts to and from [DurationType] and [String]>.
class DurationTypeConverter implements JsonConverter<DurationType?, String?> {
  /// Create a new instance of [DurationType].
  const DurationTypeConverter();

  @override
  DurationType? fromJson(String? json) {
    if (json == null) return null;
    return DurationType.values
        .firstWhere((e) => e.toString().split('.').last == json);
  }

  @override
  String? toJson(DurationType? object) {
    return object?.toString().split('.').last;
  }
}
