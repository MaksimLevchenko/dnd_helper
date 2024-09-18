import 'package:json_annotation/json_annotation.dart';

enum AreaSizeUnits {
  @JsonValue('feet')
  feet,
  @JsonValue('miles')
  miles,
  @JsonValue('special')
  special,
}

/// Converts to and from [AreaSizeUnits] and [String]>.
class AreaSizeUnitsConverter implements JsonConverter<AreaSizeUnits?, String?> {
  /// Create a new instance of [AreaSizeUnits].
  const AreaSizeUnitsConverter();

  @override
  AreaSizeUnits? fromJson(String? json) {
    if (json == null) return null;
    return AreaSizeUnits.values
        .firstWhere((e) => e.toString().split('.').last == json);
  }

  @override
  String? toJson(AreaSizeUnits? object) {
    return object?.toString().split('.').last;
  }
}
