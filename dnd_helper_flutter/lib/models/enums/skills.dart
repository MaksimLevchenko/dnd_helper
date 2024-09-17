import 'package:json_annotation/json_annotation.dart';

enum Skills {
  @JsonValue('acrobatics')
  acrobatics,
  @JsonValue('animal_handling')
  animalHandling,
  @JsonValue('arcana')
  arcana,
  @JsonValue('athletics')
  athletics,
  @JsonValue('deception')
  deception,
  @JsonValue('history')
  history,
  @JsonValue('insight')
  insight,
  @JsonValue('intimidation')
  intimidation,
  @JsonValue('investigation')
  investigation,
  @JsonValue('medicine')
  medicine,
  @JsonValue('nature')
  nature,
  @JsonValue('perception')
  perception,
  @JsonValue('performance')
  performance,
  @JsonValue('persuasion')
  persuasion,
  @JsonValue('religion')
  religion,
  @JsonValue('sleight_of_hand')
  sleightOfHand,
  @JsonValue('stealth')
  stealth,
  @JsonValue('survival')
  survival,
}

class SkillsConverter implements JsonConverter<Skills?, String?> {
  const SkillsConverter();

  @override
  Skills? fromJson(String? json) {
    if (json == null) return null;
    return Skills.values
        .firstWhere((e) => e.toString().split('.').last == json);
  }

  @override
  String? toJson(Skills? object) {
    return object?.toString().split('.').last;
  }
}
