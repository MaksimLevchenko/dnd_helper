// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CharacterData _$CharacterDataFromJson(Map<String, dynamic> json) {
  return _CharacterData.fromJson(json);
}

/// @nodoc
mixin _$CharacterData {
  String get id => throw _privateConstructorUsedError;
  String get characterName => throw _privateConstructorUsedError;
  RaceData? get characterRace => throw _privateConstructorUsedError;
  ClassData? get characterClass => throw _privateConstructorUsedError;
  BackgroundData? get background => throw _privateConstructorUsedError;
  int get experience => throw _privateConstructorUsedError;
  Dice get diceHit => throw _privateConstructorUsedError;
  int? get maxHitPoints => throw _privateConstructorUsedError;
  int? get currentHitPoints => throw _privateConstructorUsedError;
  int? get temporaryHitPoints => throw _privateConstructorUsedError;
  int? get speed => throw _privateConstructorUsedError;
  int? get armorClass => throw _privateConstructorUsedError;
  bool get inspiration => throw _privateConstructorUsedError;
  Conditions? get conditions => throw _privateConstructorUsedError;
  int? get exhaustion => throw _privateConstructorUsedError;
  Map<Attributes, int> get attributes => throw _privateConstructorUsedError;
  List<Attributes?> get savingThrows => throw _privateConstructorUsedError;
  List<Skills?> get skillsProficiency => throw _privateConstructorUsedError;
  List<Skills?> get skillsExpertise => throw _privateConstructorUsedError;
  List<ArmsData>? get attacks => throw _privateConstructorUsedError;
  List<SpellsData>? get preparedSpells => throw _privateConstructorUsedError;
  List<SpellsData>? get knownSpells => throw _privateConstructorUsedError;
  Attributes? get spellcastingAttribute => throw _privateConstructorUsedError;
  Map<int, int>? get spellSlots => throw _privateConstructorUsedError;
  List<String>? get languages => throw _privateConstructorUsedError;
  List<String>? get tools => throw _privateConstructorUsedError;
  List<String>? get weapons => throw _privateConstructorUsedError;
  Ideology? get ideology => throw _privateConstructorUsedError;
  String? get biography => throw _privateConstructorUsedError;
  String? get weight => throw _privateConstructorUsedError;
  String? get height => throw _privateConstructorUsedError;
  String? get age => throw _privateConstructorUsedError;
  String? get hairColor => throw _privateConstructorUsedError;
  String? get eyeColor => throw _privateConstructorUsedError;
  String? get skinColor => throw _privateConstructorUsedError;
  String? get alliesAndOrganizations => throw _privateConstructorUsedError;
  String? get purpose => throw _privateConstructorUsedError;
  String? get ideals => throw _privateConstructorUsedError;
  String? get bonds => throw _privateConstructorUsedError;
  String? get flaws => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  CoinsData? get coins => throw _privateConstructorUsedError;
  List<String>? get equipment => throw _privateConstructorUsedError;
  List<String>? get treasures => throw _privateConstructorUsedError;

  /// Serializes this CharacterData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CharacterData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CharacterDataCopyWith<CharacterData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterDataCopyWith<$Res> {
  factory $CharacterDataCopyWith(
          CharacterData value, $Res Function(CharacterData) then) =
      _$CharacterDataCopyWithImpl<$Res, CharacterData>;
  @useResult
  $Res call(
      {String id,
      String characterName,
      RaceData? characterRace,
      ClassData? characterClass,
      BackgroundData? background,
      int experience,
      Dice diceHit,
      int? maxHitPoints,
      int? currentHitPoints,
      int? temporaryHitPoints,
      int? speed,
      int? armorClass,
      bool inspiration,
      Conditions? conditions,
      int? exhaustion,
      Map<Attributes, int> attributes,
      List<Attributes?> savingThrows,
      List<Skills?> skillsProficiency,
      List<Skills?> skillsExpertise,
      List<ArmsData>? attacks,
      List<SpellsData>? preparedSpells,
      List<SpellsData>? knownSpells,
      Attributes? spellcastingAttribute,
      Map<int, int>? spellSlots,
      List<String>? languages,
      List<String>? tools,
      List<String>? weapons,
      Ideology? ideology,
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
      CoinsData? coins,
      List<String>? equipment,
      List<String>? treasures});

  $RaceDataCopyWith<$Res>? get characterRace;
  $ClassDataCopyWith<$Res>? get characterClass;
  $BackgroundDataCopyWith<$Res>? get background;
  $CoinsDataCopyWith<$Res>? get coins;
}

/// @nodoc
class _$CharacterDataCopyWithImpl<$Res, $Val extends CharacterData>
    implements $CharacterDataCopyWith<$Res> {
  _$CharacterDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CharacterData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? characterName = null,
    Object? characterRace = freezed,
    Object? characterClass = freezed,
    Object? background = freezed,
    Object? experience = null,
    Object? diceHit = null,
    Object? maxHitPoints = freezed,
    Object? currentHitPoints = freezed,
    Object? temporaryHitPoints = freezed,
    Object? speed = freezed,
    Object? armorClass = freezed,
    Object? inspiration = null,
    Object? conditions = freezed,
    Object? exhaustion = freezed,
    Object? attributes = null,
    Object? savingThrows = null,
    Object? skillsProficiency = null,
    Object? skillsExpertise = null,
    Object? attacks = freezed,
    Object? preparedSpells = freezed,
    Object? knownSpells = freezed,
    Object? spellcastingAttribute = freezed,
    Object? spellSlots = freezed,
    Object? languages = freezed,
    Object? tools = freezed,
    Object? weapons = freezed,
    Object? ideology = freezed,
    Object? biography = freezed,
    Object? weight = freezed,
    Object? height = freezed,
    Object? age = freezed,
    Object? hairColor = freezed,
    Object? eyeColor = freezed,
    Object? skinColor = freezed,
    Object? alliesAndOrganizations = freezed,
    Object? purpose = freezed,
    Object? ideals = freezed,
    Object? bonds = freezed,
    Object? flaws = freezed,
    Object? notes = freezed,
    Object? coins = freezed,
    Object? equipment = freezed,
    Object? treasures = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      characterName: null == characterName
          ? _value.characterName
          : characterName // ignore: cast_nullable_to_non_nullable
              as String,
      characterRace: freezed == characterRace
          ? _value.characterRace
          : characterRace // ignore: cast_nullable_to_non_nullable
              as RaceData?,
      characterClass: freezed == characterClass
          ? _value.characterClass
          : characterClass // ignore: cast_nullable_to_non_nullable
              as ClassData?,
      background: freezed == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as BackgroundData?,
      experience: null == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as int,
      diceHit: null == diceHit
          ? _value.diceHit
          : diceHit // ignore: cast_nullable_to_non_nullable
              as Dice,
      maxHitPoints: freezed == maxHitPoints
          ? _value.maxHitPoints
          : maxHitPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      currentHitPoints: freezed == currentHitPoints
          ? _value.currentHitPoints
          : currentHitPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      temporaryHitPoints: freezed == temporaryHitPoints
          ? _value.temporaryHitPoints
          : temporaryHitPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      speed: freezed == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as int?,
      armorClass: freezed == armorClass
          ? _value.armorClass
          : armorClass // ignore: cast_nullable_to_non_nullable
              as int?,
      inspiration: null == inspiration
          ? _value.inspiration
          : inspiration // ignore: cast_nullable_to_non_nullable
              as bool,
      conditions: freezed == conditions
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as Conditions?,
      exhaustion: freezed == exhaustion
          ? _value.exhaustion
          : exhaustion // ignore: cast_nullable_to_non_nullable
              as int?,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<Attributes, int>,
      savingThrows: null == savingThrows
          ? _value.savingThrows
          : savingThrows // ignore: cast_nullable_to_non_nullable
              as List<Attributes?>,
      skillsProficiency: null == skillsProficiency
          ? _value.skillsProficiency
          : skillsProficiency // ignore: cast_nullable_to_non_nullable
              as List<Skills?>,
      skillsExpertise: null == skillsExpertise
          ? _value.skillsExpertise
          : skillsExpertise // ignore: cast_nullable_to_non_nullable
              as List<Skills?>,
      attacks: freezed == attacks
          ? _value.attacks
          : attacks // ignore: cast_nullable_to_non_nullable
              as List<ArmsData>?,
      preparedSpells: freezed == preparedSpells
          ? _value.preparedSpells
          : preparedSpells // ignore: cast_nullable_to_non_nullable
              as List<SpellsData>?,
      knownSpells: freezed == knownSpells
          ? _value.knownSpells
          : knownSpells // ignore: cast_nullable_to_non_nullable
              as List<SpellsData>?,
      spellcastingAttribute: freezed == spellcastingAttribute
          ? _value.spellcastingAttribute
          : spellcastingAttribute // ignore: cast_nullable_to_non_nullable
              as Attributes?,
      spellSlots: freezed == spellSlots
          ? _value.spellSlots
          : spellSlots // ignore: cast_nullable_to_non_nullable
              as Map<int, int>?,
      languages: freezed == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      tools: freezed == tools
          ? _value.tools
          : tools // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      weapons: freezed == weapons
          ? _value.weapons
          : weapons // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      ideology: freezed == ideology
          ? _value.ideology
          : ideology // ignore: cast_nullable_to_non_nullable
              as Ideology?,
      biography: freezed == biography
          ? _value.biography
          : biography // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String?,
      hairColor: freezed == hairColor
          ? _value.hairColor
          : hairColor // ignore: cast_nullable_to_non_nullable
              as String?,
      eyeColor: freezed == eyeColor
          ? _value.eyeColor
          : eyeColor // ignore: cast_nullable_to_non_nullable
              as String?,
      skinColor: freezed == skinColor
          ? _value.skinColor
          : skinColor // ignore: cast_nullable_to_non_nullable
              as String?,
      alliesAndOrganizations: freezed == alliesAndOrganizations
          ? _value.alliesAndOrganizations
          : alliesAndOrganizations // ignore: cast_nullable_to_non_nullable
              as String?,
      purpose: freezed == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String?,
      ideals: freezed == ideals
          ? _value.ideals
          : ideals // ignore: cast_nullable_to_non_nullable
              as String?,
      bonds: freezed == bonds
          ? _value.bonds
          : bonds // ignore: cast_nullable_to_non_nullable
              as String?,
      flaws: freezed == flaws
          ? _value.flaws
          : flaws // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      coins: freezed == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as CoinsData?,
      equipment: freezed == equipment
          ? _value.equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      treasures: freezed == treasures
          ? _value.treasures
          : treasures // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  /// Create a copy of CharacterData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RaceDataCopyWith<$Res>? get characterRace {
    if (_value.characterRace == null) {
      return null;
    }

    return $RaceDataCopyWith<$Res>(_value.characterRace!, (value) {
      return _then(_value.copyWith(characterRace: value) as $Val);
    });
  }

  /// Create a copy of CharacterData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassDataCopyWith<$Res>? get characterClass {
    if (_value.characterClass == null) {
      return null;
    }

    return $ClassDataCopyWith<$Res>(_value.characterClass!, (value) {
      return _then(_value.copyWith(characterClass: value) as $Val);
    });
  }

  /// Create a copy of CharacterData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BackgroundDataCopyWith<$Res>? get background {
    if (_value.background == null) {
      return null;
    }

    return $BackgroundDataCopyWith<$Res>(_value.background!, (value) {
      return _then(_value.copyWith(background: value) as $Val);
    });
  }

  /// Create a copy of CharacterData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoinsDataCopyWith<$Res>? get coins {
    if (_value.coins == null) {
      return null;
    }

    return $CoinsDataCopyWith<$Res>(_value.coins!, (value) {
      return _then(_value.copyWith(coins: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CharacterDataImplCopyWith<$Res>
    implements $CharacterDataCopyWith<$Res> {
  factory _$$CharacterDataImplCopyWith(
          _$CharacterDataImpl value, $Res Function(_$CharacterDataImpl) then) =
      __$$CharacterDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String characterName,
      RaceData? characterRace,
      ClassData? characterClass,
      BackgroundData? background,
      int experience,
      Dice diceHit,
      int? maxHitPoints,
      int? currentHitPoints,
      int? temporaryHitPoints,
      int? speed,
      int? armorClass,
      bool inspiration,
      Conditions? conditions,
      int? exhaustion,
      Map<Attributes, int> attributes,
      List<Attributes?> savingThrows,
      List<Skills?> skillsProficiency,
      List<Skills?> skillsExpertise,
      List<ArmsData>? attacks,
      List<SpellsData>? preparedSpells,
      List<SpellsData>? knownSpells,
      Attributes? spellcastingAttribute,
      Map<int, int>? spellSlots,
      List<String>? languages,
      List<String>? tools,
      List<String>? weapons,
      Ideology? ideology,
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
      CoinsData? coins,
      List<String>? equipment,
      List<String>? treasures});

  @override
  $RaceDataCopyWith<$Res>? get characterRace;
  @override
  $ClassDataCopyWith<$Res>? get characterClass;
  @override
  $BackgroundDataCopyWith<$Res>? get background;
  @override
  $CoinsDataCopyWith<$Res>? get coins;
}

/// @nodoc
class __$$CharacterDataImplCopyWithImpl<$Res>
    extends _$CharacterDataCopyWithImpl<$Res, _$CharacterDataImpl>
    implements _$$CharacterDataImplCopyWith<$Res> {
  __$$CharacterDataImplCopyWithImpl(
      _$CharacterDataImpl _value, $Res Function(_$CharacterDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharacterData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? characterName = null,
    Object? characterRace = freezed,
    Object? characterClass = freezed,
    Object? background = freezed,
    Object? experience = null,
    Object? diceHit = null,
    Object? maxHitPoints = freezed,
    Object? currentHitPoints = freezed,
    Object? temporaryHitPoints = freezed,
    Object? speed = freezed,
    Object? armorClass = freezed,
    Object? inspiration = null,
    Object? conditions = freezed,
    Object? exhaustion = freezed,
    Object? attributes = null,
    Object? savingThrows = null,
    Object? skillsProficiency = null,
    Object? skillsExpertise = null,
    Object? attacks = freezed,
    Object? preparedSpells = freezed,
    Object? knownSpells = freezed,
    Object? spellcastingAttribute = freezed,
    Object? spellSlots = freezed,
    Object? languages = freezed,
    Object? tools = freezed,
    Object? weapons = freezed,
    Object? ideology = freezed,
    Object? biography = freezed,
    Object? weight = freezed,
    Object? height = freezed,
    Object? age = freezed,
    Object? hairColor = freezed,
    Object? eyeColor = freezed,
    Object? skinColor = freezed,
    Object? alliesAndOrganizations = freezed,
    Object? purpose = freezed,
    Object? ideals = freezed,
    Object? bonds = freezed,
    Object? flaws = freezed,
    Object? notes = freezed,
    Object? coins = freezed,
    Object? equipment = freezed,
    Object? treasures = freezed,
  }) {
    return _then(_$CharacterDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      characterName: null == characterName
          ? _value.characterName
          : characterName // ignore: cast_nullable_to_non_nullable
              as String,
      characterRace: freezed == characterRace
          ? _value.characterRace
          : characterRace // ignore: cast_nullable_to_non_nullable
              as RaceData?,
      characterClass: freezed == characterClass
          ? _value.characterClass
          : characterClass // ignore: cast_nullable_to_non_nullable
              as ClassData?,
      background: freezed == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as BackgroundData?,
      experience: null == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as int,
      diceHit: null == diceHit
          ? _value.diceHit
          : diceHit // ignore: cast_nullable_to_non_nullable
              as Dice,
      maxHitPoints: freezed == maxHitPoints
          ? _value.maxHitPoints
          : maxHitPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      currentHitPoints: freezed == currentHitPoints
          ? _value.currentHitPoints
          : currentHitPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      temporaryHitPoints: freezed == temporaryHitPoints
          ? _value.temporaryHitPoints
          : temporaryHitPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      speed: freezed == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as int?,
      armorClass: freezed == armorClass
          ? _value.armorClass
          : armorClass // ignore: cast_nullable_to_non_nullable
              as int?,
      inspiration: null == inspiration
          ? _value.inspiration
          : inspiration // ignore: cast_nullable_to_non_nullable
              as bool,
      conditions: freezed == conditions
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as Conditions?,
      exhaustion: freezed == exhaustion
          ? _value.exhaustion
          : exhaustion // ignore: cast_nullable_to_non_nullable
              as int?,
      attributes: null == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<Attributes, int>,
      savingThrows: null == savingThrows
          ? _value._savingThrows
          : savingThrows // ignore: cast_nullable_to_non_nullable
              as List<Attributes?>,
      skillsProficiency: null == skillsProficiency
          ? _value._skillsProficiency
          : skillsProficiency // ignore: cast_nullable_to_non_nullable
              as List<Skills?>,
      skillsExpertise: null == skillsExpertise
          ? _value._skillsExpertise
          : skillsExpertise // ignore: cast_nullable_to_non_nullable
              as List<Skills?>,
      attacks: freezed == attacks
          ? _value._attacks
          : attacks // ignore: cast_nullable_to_non_nullable
              as List<ArmsData>?,
      preparedSpells: freezed == preparedSpells
          ? _value._preparedSpells
          : preparedSpells // ignore: cast_nullable_to_non_nullable
              as List<SpellsData>?,
      knownSpells: freezed == knownSpells
          ? _value._knownSpells
          : knownSpells // ignore: cast_nullable_to_non_nullable
              as List<SpellsData>?,
      spellcastingAttribute: freezed == spellcastingAttribute
          ? _value.spellcastingAttribute
          : spellcastingAttribute // ignore: cast_nullable_to_non_nullable
              as Attributes?,
      spellSlots: freezed == spellSlots
          ? _value._spellSlots
          : spellSlots // ignore: cast_nullable_to_non_nullable
              as Map<int, int>?,
      languages: freezed == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      tools: freezed == tools
          ? _value._tools
          : tools // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      weapons: freezed == weapons
          ? _value._weapons
          : weapons // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      ideology: freezed == ideology
          ? _value.ideology
          : ideology // ignore: cast_nullable_to_non_nullable
              as Ideology?,
      biography: freezed == biography
          ? _value.biography
          : biography // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String?,
      hairColor: freezed == hairColor
          ? _value.hairColor
          : hairColor // ignore: cast_nullable_to_non_nullable
              as String?,
      eyeColor: freezed == eyeColor
          ? _value.eyeColor
          : eyeColor // ignore: cast_nullable_to_non_nullable
              as String?,
      skinColor: freezed == skinColor
          ? _value.skinColor
          : skinColor // ignore: cast_nullable_to_non_nullable
              as String?,
      alliesAndOrganizations: freezed == alliesAndOrganizations
          ? _value.alliesAndOrganizations
          : alliesAndOrganizations // ignore: cast_nullable_to_non_nullable
              as String?,
      purpose: freezed == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String?,
      ideals: freezed == ideals
          ? _value.ideals
          : ideals // ignore: cast_nullable_to_non_nullable
              as String?,
      bonds: freezed == bonds
          ? _value.bonds
          : bonds // ignore: cast_nullable_to_non_nullable
              as String?,
      flaws: freezed == flaws
          ? _value.flaws
          : flaws // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      coins: freezed == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as CoinsData?,
      equipment: freezed == equipment
          ? _value._equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      treasures: freezed == treasures
          ? _value._treasures
          : treasures // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharacterDataImpl extends _CharacterData {
  const _$CharacterDataImpl(
      {required this.id,
      required this.characterName,
      required this.characterRace,
      required this.characterClass,
      required this.background,
      required this.experience,
      required this.diceHit,
      this.maxHitPoints,
      this.currentHitPoints,
      this.temporaryHitPoints,
      this.speed,
      this.armorClass,
      this.inspiration = false,
      this.conditions,
      this.exhaustion,
      final Map<Attributes, int> attributes = const {
        Attributes.strength: 10,
        Attributes.dexterity: 10,
        Attributes.constitution: 10,
        Attributes.intelligence: 10,
        Attributes.wisdom: 10,
        Attributes.charisma: 10
      },
      required final List<Attributes?> savingThrows,
      required final List<Skills?> skillsProficiency,
      required final List<Skills?> skillsExpertise,
      final List<ArmsData>? attacks,
      final List<SpellsData>? preparedSpells,
      final List<SpellsData>? knownSpells,
      this.spellcastingAttribute,
      final Map<int, int>? spellSlots,
      final List<String>? languages,
      final List<String>? tools,
      final List<String>? weapons,
      this.ideology,
      this.biography,
      this.weight,
      this.height,
      this.age,
      this.hairColor,
      this.eyeColor,
      this.skinColor,
      this.alliesAndOrganizations,
      this.purpose,
      this.ideals,
      this.bonds,
      this.flaws,
      this.notes,
      this.coins,
      final List<String>? equipment,
      final List<String>? treasures})
      : _attributes = attributes,
        _savingThrows = savingThrows,
        _skillsProficiency = skillsProficiency,
        _skillsExpertise = skillsExpertise,
        _attacks = attacks,
        _preparedSpells = preparedSpells,
        _knownSpells = knownSpells,
        _spellSlots = spellSlots,
        _languages = languages,
        _tools = tools,
        _weapons = weapons,
        _equipment = equipment,
        _treasures = treasures,
        super._();

  factory _$CharacterDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharacterDataImplFromJson(json);

  @override
  final String id;
  @override
  final String characterName;
  @override
  final RaceData? characterRace;
  @override
  final ClassData? characterClass;
  @override
  final BackgroundData? background;
  @override
  final int experience;
  @override
  final Dice diceHit;
  @override
  final int? maxHitPoints;
  @override
  final int? currentHitPoints;
  @override
  final int? temporaryHitPoints;
  @override
  final int? speed;
  @override
  final int? armorClass;
  @override
  @JsonKey()
  final bool inspiration;
  @override
  final Conditions? conditions;
  @override
  final int? exhaustion;
  final Map<Attributes, int> _attributes;
  @override
  @JsonKey()
  Map<Attributes, int> get attributes {
    if (_attributes is EqualUnmodifiableMapView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_attributes);
  }

  final List<Attributes?> _savingThrows;
  @override
  List<Attributes?> get savingThrows {
    if (_savingThrows is EqualUnmodifiableListView) return _savingThrows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_savingThrows);
  }

  final List<Skills?> _skillsProficiency;
  @override
  List<Skills?> get skillsProficiency {
    if (_skillsProficiency is EqualUnmodifiableListView)
      return _skillsProficiency;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skillsProficiency);
  }

  final List<Skills?> _skillsExpertise;
  @override
  List<Skills?> get skillsExpertise {
    if (_skillsExpertise is EqualUnmodifiableListView) return _skillsExpertise;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skillsExpertise);
  }

  final List<ArmsData>? _attacks;
  @override
  List<ArmsData>? get attacks {
    final value = _attacks;
    if (value == null) return null;
    if (_attacks is EqualUnmodifiableListView) return _attacks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SpellsData>? _preparedSpells;
  @override
  List<SpellsData>? get preparedSpells {
    final value = _preparedSpells;
    if (value == null) return null;
    if (_preparedSpells is EqualUnmodifiableListView) return _preparedSpells;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SpellsData>? _knownSpells;
  @override
  List<SpellsData>? get knownSpells {
    final value = _knownSpells;
    if (value == null) return null;
    if (_knownSpells is EqualUnmodifiableListView) return _knownSpells;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Attributes? spellcastingAttribute;
  final Map<int, int>? _spellSlots;
  @override
  Map<int, int>? get spellSlots {
    final value = _spellSlots;
    if (value == null) return null;
    if (_spellSlots is EqualUnmodifiableMapView) return _spellSlots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<String>? _languages;
  @override
  List<String>? get languages {
    final value = _languages;
    if (value == null) return null;
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _tools;
  @override
  List<String>? get tools {
    final value = _tools;
    if (value == null) return null;
    if (_tools is EqualUnmodifiableListView) return _tools;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _weapons;
  @override
  List<String>? get weapons {
    final value = _weapons;
    if (value == null) return null;
    if (_weapons is EqualUnmodifiableListView) return _weapons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Ideology? ideology;
  @override
  final String? biography;
  @override
  final String? weight;
  @override
  final String? height;
  @override
  final String? age;
  @override
  final String? hairColor;
  @override
  final String? eyeColor;
  @override
  final String? skinColor;
  @override
  final String? alliesAndOrganizations;
  @override
  final String? purpose;
  @override
  final String? ideals;
  @override
  final String? bonds;
  @override
  final String? flaws;
  @override
  final String? notes;
  @override
  final CoinsData? coins;
  final List<String>? _equipment;
  @override
  List<String>? get equipment {
    final value = _equipment;
    if (value == null) return null;
    if (_equipment is EqualUnmodifiableListView) return _equipment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _treasures;
  @override
  List<String>? get treasures {
    final value = _treasures;
    if (value == null) return null;
    if (_treasures is EqualUnmodifiableListView) return _treasures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CharacterData(id: $id, characterName: $characterName, characterRace: $characterRace, characterClass: $characterClass, background: $background, experience: $experience, diceHit: $diceHit, maxHitPoints: $maxHitPoints, currentHitPoints: $currentHitPoints, temporaryHitPoints: $temporaryHitPoints, speed: $speed, armorClass: $armorClass, inspiration: $inspiration, conditions: $conditions, exhaustion: $exhaustion, attributes: $attributes, savingThrows: $savingThrows, skillsProficiency: $skillsProficiency, skillsExpertise: $skillsExpertise, attacks: $attacks, preparedSpells: $preparedSpells, knownSpells: $knownSpells, spellcastingAttribute: $spellcastingAttribute, spellSlots: $spellSlots, languages: $languages, tools: $tools, weapons: $weapons, ideology: $ideology, biography: $biography, weight: $weight, height: $height, age: $age, hairColor: $hairColor, eyeColor: $eyeColor, skinColor: $skinColor, alliesAndOrganizations: $alliesAndOrganizations, purpose: $purpose, ideals: $ideals, bonds: $bonds, flaws: $flaws, notes: $notes, coins: $coins, equipment: $equipment, treasures: $treasures)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.characterName, characterName) ||
                other.characterName == characterName) &&
            (identical(other.characterRace, characterRace) ||
                other.characterRace == characterRace) &&
            (identical(other.characterClass, characterClass) ||
                other.characterClass == characterClass) &&
            (identical(other.background, background) ||
                other.background == background) &&
            (identical(other.experience, experience) ||
                other.experience == experience) &&
            (identical(other.diceHit, diceHit) || other.diceHit == diceHit) &&
            (identical(other.maxHitPoints, maxHitPoints) ||
                other.maxHitPoints == maxHitPoints) &&
            (identical(other.currentHitPoints, currentHitPoints) ||
                other.currentHitPoints == currentHitPoints) &&
            (identical(other.temporaryHitPoints, temporaryHitPoints) ||
                other.temporaryHitPoints == temporaryHitPoints) &&
            (identical(other.speed, speed) || other.speed == speed) &&
            (identical(other.armorClass, armorClass) ||
                other.armorClass == armorClass) &&
            (identical(other.inspiration, inspiration) ||
                other.inspiration == inspiration) &&
            (identical(other.conditions, conditions) ||
                other.conditions == conditions) &&
            (identical(other.exhaustion, exhaustion) ||
                other.exhaustion == exhaustion) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes) &&
            const DeepCollectionEquality()
                .equals(other._savingThrows, _savingThrows) &&
            const DeepCollectionEquality()
                .equals(other._skillsProficiency, _skillsProficiency) &&
            const DeepCollectionEquality()
                .equals(other._skillsExpertise, _skillsExpertise) &&
            const DeepCollectionEquality().equals(other._attacks, _attacks) &&
            const DeepCollectionEquality()
                .equals(other._preparedSpells, _preparedSpells) &&
            const DeepCollectionEquality()
                .equals(other._knownSpells, _knownSpells) &&
            (identical(other.spellcastingAttribute, spellcastingAttribute) ||
                other.spellcastingAttribute == spellcastingAttribute) &&
            const DeepCollectionEquality()
                .equals(other._spellSlots, _spellSlots) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages) &&
            const DeepCollectionEquality().equals(other._tools, _tools) &&
            const DeepCollectionEquality().equals(other._weapons, _weapons) &&
            (identical(other.ideology, ideology) ||
                other.ideology == ideology) &&
            (identical(other.biography, biography) ||
                other.biography == biography) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.hairColor, hairColor) ||
                other.hairColor == hairColor) &&
            (identical(other.eyeColor, eyeColor) ||
                other.eyeColor == eyeColor) &&
            (identical(other.skinColor, skinColor) ||
                other.skinColor == skinColor) &&
            (identical(other.alliesAndOrganizations, alliesAndOrganizations) ||
                other.alliesAndOrganizations == alliesAndOrganizations) &&
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
            (identical(other.ideals, ideals) || other.ideals == ideals) &&
            (identical(other.bonds, bonds) || other.bonds == bonds) &&
            (identical(other.flaws, flaws) || other.flaws == flaws) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.coins, coins) || other.coins == coins) &&
            const DeepCollectionEquality()
                .equals(other._equipment, _equipment) &&
            const DeepCollectionEquality()
                .equals(other._treasures, _treasures));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        characterName,
        characterRace,
        characterClass,
        background,
        experience,
        diceHit,
        maxHitPoints,
        currentHitPoints,
        temporaryHitPoints,
        speed,
        armorClass,
        inspiration,
        conditions,
        exhaustion,
        const DeepCollectionEquality().hash(_attributes),
        const DeepCollectionEquality().hash(_savingThrows),
        const DeepCollectionEquality().hash(_skillsProficiency),
        const DeepCollectionEquality().hash(_skillsExpertise),
        const DeepCollectionEquality().hash(_attacks),
        const DeepCollectionEquality().hash(_preparedSpells),
        const DeepCollectionEquality().hash(_knownSpells),
        spellcastingAttribute,
        const DeepCollectionEquality().hash(_spellSlots),
        const DeepCollectionEquality().hash(_languages),
        const DeepCollectionEquality().hash(_tools),
        const DeepCollectionEquality().hash(_weapons),
        ideology,
        biography,
        weight,
        height,
        age,
        hairColor,
        eyeColor,
        skinColor,
        alliesAndOrganizations,
        purpose,
        ideals,
        bonds,
        flaws,
        notes,
        coins,
        const DeepCollectionEquality().hash(_equipment),
        const DeepCollectionEquality().hash(_treasures)
      ]);

  /// Create a copy of CharacterData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterDataImplCopyWith<_$CharacterDataImpl> get copyWith =>
      __$$CharacterDataImplCopyWithImpl<_$CharacterDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacterDataImplToJson(
      this,
    );
  }
}

abstract class _CharacterData extends CharacterData {
  const factory _CharacterData(
      {required final String id,
      required final String characterName,
      required final RaceData? characterRace,
      required final ClassData? characterClass,
      required final BackgroundData? background,
      required final int experience,
      required final Dice diceHit,
      final int? maxHitPoints,
      final int? currentHitPoints,
      final int? temporaryHitPoints,
      final int? speed,
      final int? armorClass,
      final bool inspiration,
      final Conditions? conditions,
      final int? exhaustion,
      final Map<Attributes, int> attributes,
      required final List<Attributes?> savingThrows,
      required final List<Skills?> skillsProficiency,
      required final List<Skills?> skillsExpertise,
      final List<ArmsData>? attacks,
      final List<SpellsData>? preparedSpells,
      final List<SpellsData>? knownSpells,
      final Attributes? spellcastingAttribute,
      final Map<int, int>? spellSlots,
      final List<String>? languages,
      final List<String>? tools,
      final List<String>? weapons,
      final Ideology? ideology,
      final String? biography,
      final String? weight,
      final String? height,
      final String? age,
      final String? hairColor,
      final String? eyeColor,
      final String? skinColor,
      final String? alliesAndOrganizations,
      final String? purpose,
      final String? ideals,
      final String? bonds,
      final String? flaws,
      final String? notes,
      final CoinsData? coins,
      final List<String>? equipment,
      final List<String>? treasures}) = _$CharacterDataImpl;
  const _CharacterData._() : super._();

  factory _CharacterData.fromJson(Map<String, dynamic> json) =
      _$CharacterDataImpl.fromJson;

  @override
  String get id;
  @override
  String get characterName;
  @override
  RaceData? get characterRace;
  @override
  ClassData? get characterClass;
  @override
  BackgroundData? get background;
  @override
  int get experience;
  @override
  Dice get diceHit;
  @override
  int? get maxHitPoints;
  @override
  int? get currentHitPoints;
  @override
  int? get temporaryHitPoints;
  @override
  int? get speed;
  @override
  int? get armorClass;
  @override
  bool get inspiration;
  @override
  Conditions? get conditions;
  @override
  int? get exhaustion;
  @override
  Map<Attributes, int> get attributes;
  @override
  List<Attributes?> get savingThrows;
  @override
  List<Skills?> get skillsProficiency;
  @override
  List<Skills?> get skillsExpertise;
  @override
  List<ArmsData>? get attacks;
  @override
  List<SpellsData>? get preparedSpells;
  @override
  List<SpellsData>? get knownSpells;
  @override
  Attributes? get spellcastingAttribute;
  @override
  Map<int, int>? get spellSlots;
  @override
  List<String>? get languages;
  @override
  List<String>? get tools;
  @override
  List<String>? get weapons;
  @override
  Ideology? get ideology;
  @override
  String? get biography;
  @override
  String? get weight;
  @override
  String? get height;
  @override
  String? get age;
  @override
  String? get hairColor;
  @override
  String? get eyeColor;
  @override
  String? get skinColor;
  @override
  String? get alliesAndOrganizations;
  @override
  String? get purpose;
  @override
  String? get ideals;
  @override
  String? get bonds;
  @override
  String? get flaws;
  @override
  String? get notes;
  @override
  CoinsData? get coins;
  @override
  List<String>? get equipment;
  @override
  List<String>? get treasures;

  /// Create a copy of CharacterData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CharacterDataImplCopyWith<_$CharacterDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
