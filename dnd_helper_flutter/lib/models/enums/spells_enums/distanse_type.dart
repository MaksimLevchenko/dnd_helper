import 'package:json_annotation/json_annotation.dart';

enum DistanceType {
  @JsonValue('touch')
  touch,
  @JsonValue('sight')
  sight,
  @JsonValue('unlimited')
  unlimited,
  @JsonValue('special')
  special,
  @JsonValue('feet')
  feet,
  @JsonValue('miles')
  miles,
}

/// Converts to and from [DistanceType] and [String]>.
class DistanceTypeConverter implements JsonConverter<DistanceType?, String?> {
  /// Create a new instance of [DistanceType].
  const DistanceTypeConverter();

  @override
  DistanceType? fromJson(String? json) {
    if (json == null) return null;
    return DistanceType.values
        .firstWhere((e) => e.toString().split('.').last == json);
  }

  @override
  String? toJson(DistanceType? object) {
    return object?.toString().split('.').last;
  }
}
