// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'race_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RaceData _$RaceDataFromJson(Map<String, dynamic> json) {
  return _RaceData.fromJson(json);
}

/// @nodoc
mixin _$RaceData {
  String get name => throw _privateConstructorUsedError;
  Map<Attributes, int>? get attributes => throw _privateConstructorUsedError;
  List<Skills>? get skills => throw _privateConstructorUsedError;
  List<AttacksData>? get attacks => throw _privateConstructorUsedError;
  int? get speed => throw _privateConstructorUsedError;
  List<SubraceData>? get subRaces => throw _privateConstructorUsedError;
  Map<String, String>? get raceFeatures => throw _privateConstructorUsedError;
  String get imageLink => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;

  /// Serializes this RaceData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RaceData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RaceDataCopyWith<RaceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RaceDataCopyWith<$Res> {
  factory $RaceDataCopyWith(RaceData value, $Res Function(RaceData) then) =
      _$RaceDataCopyWithImpl<$Res, RaceData>;
  @useResult
  $Res call(
      {String name,
      Map<Attributes, int>? attributes,
      List<Skills>? skills,
      List<AttacksData>? attacks,
      int? speed,
      List<SubraceData>? subRaces,
      Map<String, String>? raceFeatures,
      String imageLink,
      String? source});
}

/// @nodoc
class _$RaceDataCopyWithImpl<$Res, $Val extends RaceData>
    implements $RaceDataCopyWith<$Res> {
  _$RaceDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RaceData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? attributes = freezed,
    Object? skills = freezed,
    Object? attacks = freezed,
    Object? speed = freezed,
    Object? subRaces = freezed,
    Object? raceFeatures = freezed,
    Object? imageLink = null,
    Object? source = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<Attributes, int>?,
      skills: freezed == skills
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<Skills>?,
      attacks: freezed == attacks
          ? _value.attacks
          : attacks // ignore: cast_nullable_to_non_nullable
              as List<AttacksData>?,
      speed: freezed == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as int?,
      subRaces: freezed == subRaces
          ? _value.subRaces
          : subRaces // ignore: cast_nullable_to_non_nullable
              as List<SubraceData>?,
      raceFeatures: freezed == raceFeatures
          ? _value.raceFeatures
          : raceFeatures // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      imageLink: null == imageLink
          ? _value.imageLink
          : imageLink // ignore: cast_nullable_to_non_nullable
              as String,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RaceDataImplCopyWith<$Res>
    implements $RaceDataCopyWith<$Res> {
  factory _$$RaceDataImplCopyWith(
          _$RaceDataImpl value, $Res Function(_$RaceDataImpl) then) =
      __$$RaceDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      Map<Attributes, int>? attributes,
      List<Skills>? skills,
      List<AttacksData>? attacks,
      int? speed,
      List<SubraceData>? subRaces,
      Map<String, String>? raceFeatures,
      String imageLink,
      String? source});
}

/// @nodoc
class __$$RaceDataImplCopyWithImpl<$Res>
    extends _$RaceDataCopyWithImpl<$Res, _$RaceDataImpl>
    implements _$$RaceDataImplCopyWith<$Res> {
  __$$RaceDataImplCopyWithImpl(
      _$RaceDataImpl _value, $Res Function(_$RaceDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of RaceData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? attributes = freezed,
    Object? skills = freezed,
    Object? attacks = freezed,
    Object? speed = freezed,
    Object? subRaces = freezed,
    Object? raceFeatures = freezed,
    Object? imageLink = null,
    Object? source = freezed,
  }) {
    return _then(_$RaceDataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: freezed == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<Attributes, int>?,
      skills: freezed == skills
          ? _value._skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<Skills>?,
      attacks: freezed == attacks
          ? _value._attacks
          : attacks // ignore: cast_nullable_to_non_nullable
              as List<AttacksData>?,
      speed: freezed == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as int?,
      subRaces: freezed == subRaces
          ? _value._subRaces
          : subRaces // ignore: cast_nullable_to_non_nullable
              as List<SubraceData>?,
      raceFeatures: freezed == raceFeatures
          ? _value._raceFeatures
          : raceFeatures // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      imageLink: null == imageLink
          ? _value.imageLink
          : imageLink // ignore: cast_nullable_to_non_nullable
              as String,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RaceDataImpl implements _RaceData {
  const _$RaceDataImpl(
      {required this.name,
      final Map<Attributes, int>? attributes,
      final List<Skills>? skills,
      final List<AttacksData>? attacks,
      this.speed,
      final List<SubraceData>? subRaces,
      final Map<String, String>? raceFeatures,
      required this.imageLink,
      this.source})
      : _attributes = attributes,
        _skills = skills,
        _attacks = attacks,
        _subRaces = subRaces,
        _raceFeatures = raceFeatures;

  factory _$RaceDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RaceDataImplFromJson(json);

  @override
  final String name;
  final Map<Attributes, int>? _attributes;
  @override
  Map<Attributes, int>? get attributes {
    final value = _attributes;
    if (value == null) return null;
    if (_attributes is EqualUnmodifiableMapView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<Skills>? _skills;
  @override
  List<Skills>? get skills {
    final value = _skills;
    if (value == null) return null;
    if (_skills is EqualUnmodifiableListView) return _skills;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AttacksData>? _attacks;
  @override
  List<AttacksData>? get attacks {
    final value = _attacks;
    if (value == null) return null;
    if (_attacks is EqualUnmodifiableListView) return _attacks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? speed;
  final List<SubraceData>? _subRaces;
  @override
  List<SubraceData>? get subRaces {
    final value = _subRaces;
    if (value == null) return null;
    if (_subRaces is EqualUnmodifiableListView) return _subRaces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, String>? _raceFeatures;
  @override
  Map<String, String>? get raceFeatures {
    final value = _raceFeatures;
    if (value == null) return null;
    if (_raceFeatures is EqualUnmodifiableMapView) return _raceFeatures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String imageLink;
  @override
  final String? source;

  @override
  String toString() {
    return 'RaceData(name: $name, attributes: $attributes, skills: $skills, attacks: $attacks, speed: $speed, subRaces: $subRaces, raceFeatures: $raceFeatures, imageLink: $imageLink, source: $source)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RaceDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes) &&
            const DeepCollectionEquality().equals(other._skills, _skills) &&
            const DeepCollectionEquality().equals(other._attacks, _attacks) &&
            (identical(other.speed, speed) || other.speed == speed) &&
            const DeepCollectionEquality().equals(other._subRaces, _subRaces) &&
            const DeepCollectionEquality()
                .equals(other._raceFeatures, _raceFeatures) &&
            (identical(other.imageLink, imageLink) ||
                other.imageLink == imageLink) &&
            (identical(other.source, source) || other.source == source));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(_attributes),
      const DeepCollectionEquality().hash(_skills),
      const DeepCollectionEquality().hash(_attacks),
      speed,
      const DeepCollectionEquality().hash(_subRaces),
      const DeepCollectionEquality().hash(_raceFeatures),
      imageLink,
      source);

  /// Create a copy of RaceData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RaceDataImplCopyWith<_$RaceDataImpl> get copyWith =>
      __$$RaceDataImplCopyWithImpl<_$RaceDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RaceDataImplToJson(
      this,
    );
  }
}

abstract class _RaceData implements RaceData {
  const factory _RaceData(
      {required final String name,
      final Map<Attributes, int>? attributes,
      final List<Skills>? skills,
      final List<AttacksData>? attacks,
      final int? speed,
      final List<SubraceData>? subRaces,
      final Map<String, String>? raceFeatures,
      required final String imageLink,
      final String? source}) = _$RaceDataImpl;

  factory _RaceData.fromJson(Map<String, dynamic> json) =
      _$RaceDataImpl.fromJson;

  @override
  String get name;
  @override
  Map<Attributes, int>? get attributes;
  @override
  List<Skills>? get skills;
  @override
  List<AttacksData>? get attacks;
  @override
  int? get speed;
  @override
  List<SubraceData>? get subRaces;
  @override
  Map<String, String>? get raceFeatures;
  @override
  String get imageLink;
  @override
  String? get source;

  /// Create a copy of RaceData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RaceDataImplCopyWith<_$RaceDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
