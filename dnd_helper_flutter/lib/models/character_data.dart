class CharacterData {
  final String characterName;
  final String characterRace;
  final String characterClass;
  final String subClass;
  final String background;

  final int level;
  final int experience;

  final String diceHit;
  final int maxHitPoints;
  final int currentHitPoints;
  final int temporaryHitPoints;

  final int initiative;
  final int speed;
  final int armorClass;
  final bool inspyration;
  final List<String> conditions;
  final int exhaustion;

  final Map<String, int> attributes;
  final List<String> savingThrows;
  final List<String> skills;

  final int proficiencyBonus;
  final List<Map<String, dynamic>> attacks;
  final List<String> preparedSpells;
  final List<String> abilities;

  final List<String> languages;
  final List<String> tools;
  final List<String> weapons;

  final String alignment;
  final String biography;
  final String weight;
  final String height;
  final String age;
  final String hairColor;
  final String eyeColor;
  final String skinColor;

  final String alliesAndOrganizations;
  final String purpose;
  final String ideals;
  final String bonds;
  final String flaws;

  final String notes;

  final Map<String, int> coins;
  final List<String> equipment;
  final List<String> tresuares;

  CharacterData({
    this.characterName = 'name',
    this.characterRace = 'race',
    this.characterClass = 'class',
    this.level = 1,
    this.attributes = const {
      'strength': 10,
      'dexterity': 10,
      'constitution': 10,
      'intelligence': 10,
      'wisdom': 10,
      'charisma': 10,
    },
    this.experience = 0,
    this.subClass = 'subClass',
    this.background = '',
    this.diceHit = '',
    this.maxHitPoints = 0,
    this.currentHitPoints = 0,
    this.temporaryHitPoints = 0,
    this.initiative = 0,
    this.speed = 0,
    this.armorClass = 0,
    this.inspyration = false,
    this.conditions = const [],
    this.exhaustion = 0,
    this.savingThrows = const [],
    this.skills = const [],
    this.proficiencyBonus = 0,
    this.attacks = const [],
    this.preparedSpells = const [],
    this.abilities = const [],
    this.languages = const [],
    this.tools = const [],
    this.weapons = const [],
    this.alignment = '',
    this.biography = '',
    this.weight = '',
    this.height = '',
    this.age = '',
    this.hairColor = '',
    this.eyeColor = '',
    this.skinColor = '',
    this.alliesAndOrganizations = '',
    this.purpose = '',
    this.ideals = '',
    this.bonds = '',
    this.flaws = '',
    this.notes = '',
    this.coins = const {},
    this.equipment = const [],
    this.tresuares = const [],
  });

  CharacterData copyWith({
    String? characterName,
    String? characterRace,
    String? characterClass,
    String? subClass,
    String? background,
    int? level,
    int? experience,
    String? diceHit,
    int? maxHitPoints,
    int? currentHitPoints,
    int? temporaryHitPoints,
    int? initiative,
    int? speed,
    int? armorClass,
    bool? inspyration,
    List<String>? conditions,
    int? exhaustion,
    Map<String, int>? attributes,
    List<String>? savingThrows,
    List<String>? skills,
    int? proficiencyBonus,
    List<Map<String, dynamic>>? attacks,
    List<String>? preparedSpells,
    List<String>? abilities,
    List<String>? languages,
    List<String>? tools,
    List<String>? weapons,
    String? alignment,
    String? biography,
    String? weight,
    String? height,
    String? age,
    String? hairColor,
    String? eyeColor,
    String? skinColor,
    String? alliesAndOrganizations,
    String? purpose,
    String? ideals,
    String? bonds,
    String? flaws,
    String? notes,
    Map<String, int>? coins,
    List<String>? equipment,
    List<String>? tresuares,
  }) {
    return CharacterData(
      characterName: characterName ?? this.characterName,
      characterRace: characterRace ?? this.characterRace,
      characterClass: characterClass ?? this.characterClass,
      subClass: subClass ?? this.subClass,
      background: background ?? this.background,
      level: level ?? this.level,
      experience: experience ?? this.experience,
      diceHit: diceHit ?? this.diceHit,
      maxHitPoints: maxHitPoints ?? this.maxHitPoints,
      currentHitPoints: currentHitPoints ?? this.currentHitPoints,
      temporaryHitPoints: temporaryHitPoints ?? this.temporaryHitPoints,
      initiative: initiative ?? this.initiative,
      speed: speed ?? this.speed,
      armorClass: armorClass ?? this.armorClass,
      inspyration: inspyration ?? this.inspyration,
      conditions: conditions ?? this.conditions,
      exhaustion: exhaustion ?? this.exhaustion,
      attributes: attributes ?? this.attributes,
      savingThrows: savingThrows ?? this.savingThrows,
      skills: skills ?? this.skills,
      proficiencyBonus: proficiencyBonus ?? this.proficiencyBonus,
      attacks: attacks ?? this.attacks,
      preparedSpells: preparedSpells ?? this.preparedSpells,
      abilities: abilities ?? this.abilities,
      languages: languages ?? this.languages,
      tools: tools ?? this.tools,
      weapons: weapons ?? this.weapons,
      alignment: alignment ?? this.alignment,
      biography: biography ?? this.biography,
      weight: weight ?? this.weight,
      height: height ?? this.height,
      age: age ?? this.age,
      hairColor: hairColor ?? this.hairColor,
      eyeColor: eyeColor ?? this.eyeColor,
      skinColor: skinColor ?? this.skinColor,
      alliesAndOrganizations:
          alliesAndOrganizations ?? this.alliesAndOrganizations,
      purpose: purpose ?? this.purpose,
      ideals: ideals ?? this.ideals,
      bonds: bonds ?? this.bonds,
      flaws: flaws ?? this.flaws,
      notes: notes ?? this.notes,
      coins: coins ?? this.coins,
      equipment: equipment ?? this.equipment,
      tresuares: tresuares ?? this.tresuares,
    );
  }

  @override
  String toString() {
    return '''
      Character Name: $characterName
      Character Race: $characterRace
      Character Class: $characterClass
      Subclass: $subClass
      Background: $background
      Level: $level
      Experience: $experience
      Dice Hit: $diceHit
      Max Hit Points: $maxHitPoints
      Current Hit Points: $currentHitPoints
      Temporary Hit Points: $temporaryHitPoints
      Initiative: $initiative
      Speed: $speed
      Armor Class: $armorClass
      Inspyration: $inspyration
      Conditions: $conditions
      Exhaustion: $exhaustion
      Attributes: $attributes
      Saving Throws: $savingThrows
      Skills: $skills
      Proficiency Bonus: $proficiencyBonus
      Attacks: $attacks
      Prepared Spells: $preparedSpells
      Abilities: $abilities
      Languages: $languages
      Tools: $tools
      Weapons: $weapons
      Alignment: $alignment
      Biography: $biography
      Weight: $weight
      Height: $height
      Age: $age
      Hair Color: $hairColor
      Eye Color: $eyeColor
      Skin Color: $skinColor
      Allies and Organizations: $alliesAndOrganizations
      Purpose: $purpose
      Ideals: $ideals
      Bonds: $bonds
      Flaws: $flaws
      Notes: $notes
      Coins: $coins
      Equipment: $equipment
      Treasures: $tresuares
    ''';
  }
}
