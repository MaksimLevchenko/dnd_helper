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
  String? get name =>
      throw _privateConstructorUsedError; // @SkillsConverter() Skills? skills,
  String? get subClass => throw _privateConstructorUsedError;
  @Uint8ListConverter()
  Uint8List get image => throw _privateConstructorUsedError;

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
      {String? name, String? subClass, @Uint8ListConverter() Uint8List image});
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
    Object? name = freezed,
    Object? subClass = freezed,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      subClass: freezed == subClass
          ? _value.subClass
          : subClass // ignore: cast_nullable_to_non_nullable
              as String?,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List,
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
      {String? name, String? subClass, @Uint8ListConverter() Uint8List image});
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
    Object? name = freezed,
    Object? subClass = freezed,
    Object? image = null,
  }) {
    return _then(_$RaceDataImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      subClass: freezed == subClass
          ? _value.subClass
          : subClass // ignore: cast_nullable_to_non_nullable
              as String?,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RaceDataImpl implements _RaceData {
  const _$RaceDataImpl(
      {this.name, this.subClass, @Uint8ListConverter() required this.image});

  factory _$RaceDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RaceDataImplFromJson(json);

  @override
  final String? name;
// @SkillsConverter() Skills? skills,
  @override
  final String? subClass;
  @override
  @Uint8ListConverter()
  final Uint8List image;

  @override
  String toString() {
    return 'RaceData(name: $name, subClass: $subClass, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RaceDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.subClass, subClass) ||
                other.subClass == subClass) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, subClass, const DeepCollectionEquality().hash(image));

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
      {final String? name,
      final String? subClass,
      @Uint8ListConverter() required final Uint8List image}) = _$RaceDataImpl;

  factory _RaceData.fromJson(Map<String, dynamic> json) =
      _$RaceDataImpl.fromJson;

  @override
  String? get name; // @SkillsConverter() Skills? skills,
  @override
  String? get subClass;
  @override
  @Uint8ListConverter()
  Uint8List get image;

  /// Create a copy of RaceData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RaceDataImplCopyWith<_$RaceDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
