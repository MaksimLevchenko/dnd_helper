import 'package:dnd_helper_flutter/models/character_data/character_data.dart';
import 'package:dnd_helper_flutter/models/enums/attributes.dart';

extension CharacterDataX on CharacterData {
  int calculateModifier(Attributes attribute) {
    return attributes != null ? ((attributes![attribute] ?? 0) - 10) ~/ 2 : 0;
  }

  int calculateSpellSaveDC() {
    return attributes != null && spellcastingAttribute != null
        ? 8 + calculateModifier(spellcastingAttribute!) + (proficiencyBonus)
        : 0;
  }

  int calculateProficiencyBonus() {
    return (level ~/ 4) + 2;
  }

  int calculateInitiative() {
    return attributes != null ? calculateModifier(Attributes.dexterity) : 0;
  }
}
