// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClassData _$ClassDataFromJson(Map<String, dynamic> json) {
  return _ClassData.fromJson(json);
}

/// @nodoc
mixin _$ClassData {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  List<String>? get subClasses => throw _privateConstructorUsedError;
  List<Attributes>? get savingThrows => throw _privateConstructorUsedError;
  Dice? get hitDice => throw _privateConstructorUsedError;
  List<ArmsData>? get proficienciesWeapons =>
      throw _privateConstructorUsedError;
  List<ArmorData>? get proficienciesArmor => throw _privateConstructorUsedError;
  List<List<String>>? get startEquipment => throw _privateConstructorUsedError;
  Map<int, List<Map<String, String>>>? get classFeatures =>
      throw _privateConstructorUsedError;
  Map<String, String>? get description => throw _privateConstructorUsedError;
  @Uint8ListConverter()
  Uint8List? get image => throw _privateConstructorUsedError;

  /// Serializes this ClassData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassDataCopyWith<ClassData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassDataCopyWith<$Res> {
  factory $ClassDataCopyWith(ClassData value, $Res Function(ClassData) then) =
      _$ClassDataCopyWithImpl<$Res, ClassData>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      List<String>? subClasses,
      List<Attributes>? savingThrows,
      Dice? hitDice,
      List<ArmsData>? proficienciesWeapons,
      List<ArmorData>? proficienciesArmor,
      List<List<String>>? startEquipment,
      Map<int, List<Map<String, String>>>? classFeatures,
      Map<String, String>? description,
      @Uint8ListConverter() Uint8List? image});
}

/// @nodoc
class _$ClassDataCopyWithImpl<$Res, $Val extends ClassData>
    implements $ClassDataCopyWith<$Res> {
  _$ClassDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? subClasses = freezed,
    Object? savingThrows = freezed,
    Object? hitDice = freezed,
    Object? proficienciesWeapons = freezed,
    Object? proficienciesArmor = freezed,
    Object? startEquipment = freezed,
    Object? classFeatures = freezed,
    Object? description = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      subClasses: freezed == subClasses
          ? _value.subClasses
          : subClasses // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      savingThrows: freezed == savingThrows
          ? _value.savingThrows
          : savingThrows // ignore: cast_nullable_to_non_nullable
              as List<Attributes>?,
      hitDice: freezed == hitDice
          ? _value.hitDice
          : hitDice // ignore: cast_nullable_to_non_nullable
              as Dice?,
      proficienciesWeapons: freezed == proficienciesWeapons
          ? _value.proficienciesWeapons
          : proficienciesWeapons // ignore: cast_nullable_to_non_nullable
              as List<ArmsData>?,
      proficienciesArmor: freezed == proficienciesArmor
          ? _value.proficienciesArmor
          : proficienciesArmor // ignore: cast_nullable_to_non_nullable
              as List<ArmorData>?,
      startEquipment: freezed == startEquipment
          ? _value.startEquipment
          : startEquipment // ignore: cast_nullable_to_non_nullable
              as List<List<String>>?,
      classFeatures: freezed == classFeatures
          ? _value.classFeatures
          : classFeatures // ignore: cast_nullable_to_non_nullable
              as Map<int, List<Map<String, String>>>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClassDataImplCopyWith<$Res>
    implements $ClassDataCopyWith<$Res> {
  factory _$$ClassDataImplCopyWith(
          _$ClassDataImpl value, $Res Function(_$ClassDataImpl) then) =
      __$$ClassDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      List<String>? subClasses,
      List<Attributes>? savingThrows,
      Dice? hitDice,
      List<ArmsData>? proficienciesWeapons,
      List<ArmorData>? proficienciesArmor,
      List<List<String>>? startEquipment,
      Map<int, List<Map<String, String>>>? classFeatures,
      Map<String, String>? description,
      @Uint8ListConverter() Uint8List? image});
}

/// @nodoc
class __$$ClassDataImplCopyWithImpl<$Res>
    extends _$ClassDataCopyWithImpl<$Res, _$ClassDataImpl>
    implements _$$ClassDataImplCopyWith<$Res> {
  __$$ClassDataImplCopyWithImpl(
      _$ClassDataImpl _value, $Res Function(_$ClassDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? subClasses = freezed,
    Object? savingThrows = freezed,
    Object? hitDice = freezed,
    Object? proficienciesWeapons = freezed,
    Object? proficienciesArmor = freezed,
    Object? startEquipment = freezed,
    Object? classFeatures = freezed,
    Object? description = freezed,
    Object? image = freezed,
  }) {
    return _then(_$ClassDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      subClasses: freezed == subClasses
          ? _value._subClasses
          : subClasses // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      savingThrows: freezed == savingThrows
          ? _value._savingThrows
          : savingThrows // ignore: cast_nullable_to_non_nullable
              as List<Attributes>?,
      hitDice: freezed == hitDice
          ? _value.hitDice
          : hitDice // ignore: cast_nullable_to_non_nullable
              as Dice?,
      proficienciesWeapons: freezed == proficienciesWeapons
          ? _value._proficienciesWeapons
          : proficienciesWeapons // ignore: cast_nullable_to_non_nullable
              as List<ArmsData>?,
      proficienciesArmor: freezed == proficienciesArmor
          ? _value._proficienciesArmor
          : proficienciesArmor // ignore: cast_nullable_to_non_nullable
              as List<ArmorData>?,
      startEquipment: freezed == startEquipment
          ? _value._startEquipment
          : startEquipment // ignore: cast_nullable_to_non_nullable
              as List<List<String>>?,
      classFeatures: freezed == classFeatures
          ? _value._classFeatures
          : classFeatures // ignore: cast_nullable_to_non_nullable
              as Map<int, List<Map<String, String>>>?,
      description: freezed == description
          ? _value._description
          : description // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassDataImpl implements _ClassData {
  const _$ClassDataImpl(
      {this.id,
      this.name,
      final List<String>? subClasses,
      final List<Attributes>? savingThrows,
      this.hitDice,
      final List<ArmsData>? proficienciesWeapons,
      final List<ArmorData>? proficienciesArmor,
      final List<List<String>>? startEquipment,
      final Map<int, List<Map<String, String>>>? classFeatures,
      final Map<String, String>? description,
      @Uint8ListConverter() this.image})
      : _subClasses = subClasses,
        _savingThrows = savingThrows,
        _proficienciesWeapons = proficienciesWeapons,
        _proficienciesArmor = proficienciesArmor,
        _startEquipment = startEquipment,
        _classFeatures = classFeatures,
        _description = description;

  factory _$ClassDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassDataImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  final List<String>? _subClasses;
  @override
  List<String>? get subClasses {
    final value = _subClasses;
    if (value == null) return null;
    if (_subClasses is EqualUnmodifiableListView) return _subClasses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Attributes>? _savingThrows;
  @override
  List<Attributes>? get savingThrows {
    final value = _savingThrows;
    if (value == null) return null;
    if (_savingThrows is EqualUnmodifiableListView) return _savingThrows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Dice? hitDice;
  final List<ArmsData>? _proficienciesWeapons;
  @override
  List<ArmsData>? get proficienciesWeapons {
    final value = _proficienciesWeapons;
    if (value == null) return null;
    if (_proficienciesWeapons is EqualUnmodifiableListView)
      return _proficienciesWeapons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ArmorData>? _proficienciesArmor;
  @override
  List<ArmorData>? get proficienciesArmor {
    final value = _proficienciesArmor;
    if (value == null) return null;
    if (_proficienciesArmor is EqualUnmodifiableListView)
      return _proficienciesArmor;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<List<String>>? _startEquipment;
  @override
  List<List<String>>? get startEquipment {
    final value = _startEquipment;
    if (value == null) return null;
    if (_startEquipment is EqualUnmodifiableListView) return _startEquipment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<int, List<Map<String, String>>>? _classFeatures;
  @override
  Map<int, List<Map<String, String>>>? get classFeatures {
    final value = _classFeatures;
    if (value == null) return null;
    if (_classFeatures is EqualUnmodifiableMapView) return _classFeatures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, String>? _description;
  @override
  Map<String, String>? get description {
    final value = _description;
    if (value == null) return null;
    if (_description is EqualUnmodifiableMapView) return _description;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @Uint8ListConverter()
  final Uint8List? image;

  @override
  String toString() {
    return 'ClassData(id: $id, name: $name, subClasses: $subClasses, savingThrows: $savingThrows, hitDice: $hitDice, proficienciesWeapons: $proficienciesWeapons, proficienciesArmor: $proficienciesArmor, startEquipment: $startEquipment, classFeatures: $classFeatures, description: $description, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._subClasses, _subClasses) &&
            const DeepCollectionEquality()
                .equals(other._savingThrows, _savingThrows) &&
            (identical(other.hitDice, hitDice) || other.hitDice == hitDice) &&
            const DeepCollectionEquality()
                .equals(other._proficienciesWeapons, _proficienciesWeapons) &&
            const DeepCollectionEquality()
                .equals(other._proficienciesArmor, _proficienciesArmor) &&
            const DeepCollectionEquality()
                .equals(other._startEquipment, _startEquipment) &&
            const DeepCollectionEquality()
                .equals(other._classFeatures, _classFeatures) &&
            const DeepCollectionEquality()
                .equals(other._description, _description) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_subClasses),
      const DeepCollectionEquality().hash(_savingThrows),
      hitDice,
      const DeepCollectionEquality().hash(_proficienciesWeapons),
      const DeepCollectionEquality().hash(_proficienciesArmor),
      const DeepCollectionEquality().hash(_startEquipment),
      const DeepCollectionEquality().hash(_classFeatures),
      const DeepCollectionEquality().hash(_description),
      const DeepCollectionEquality().hash(image));

  /// Create a copy of ClassData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassDataImplCopyWith<_$ClassDataImpl> get copyWith =>
      __$$ClassDataImplCopyWithImpl<_$ClassDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassDataImplToJson(
      this,
    );
  }
}

abstract class _ClassData implements ClassData {
  const factory _ClassData(
      {final int? id,
      final String? name,
      final List<String>? subClasses,
      final List<Attributes>? savingThrows,
      final Dice? hitDice,
      final List<ArmsData>? proficienciesWeapons,
      final List<ArmorData>? proficienciesArmor,
      final List<List<String>>? startEquipment,
      final Map<int, List<Map<String, String>>>? classFeatures,
      final Map<String, String>? description,
      @Uint8ListConverter() final Uint8List? image}) = _$ClassDataImpl;

  factory _ClassData.fromJson(Map<String, dynamic> json) =
      _$ClassDataImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  List<String>? get subClasses;
  @override
  List<Attributes>? get savingThrows;
  @override
  Dice? get hitDice;
  @override
  List<ArmsData>? get proficienciesWeapons;
  @override
  List<ArmorData>? get proficienciesArmor;
  @override
  List<List<String>>? get startEquipment;
  @override
  Map<int, List<Map<String, String>>>? get classFeatures;
  @override
  Map<String, String>? get description;
  @override
  @Uint8ListConverter()
  Uint8List? get image;

  /// Create a copy of ClassData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassDataImplCopyWith<_$ClassDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
