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
  String? get name => throw _privateConstructorUsedError;
  int? get level => throw _privateConstructorUsedError;
  List<String>? get abilities => throw _privateConstructorUsedError;
  String? get subClass => throw _privateConstructorUsedError;
  @Uint8ListConverter()
  Uint8List get image => throw _privateConstructorUsedError;

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
      {String? name,
      int? level,
      List<String>? abilities,
      String? subClass,
      @Uint8ListConverter() Uint8List image});
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
    Object? name = freezed,
    Object? level = freezed,
    Object? abilities = freezed,
    Object? subClass = freezed,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      abilities: freezed == abilities
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
abstract class _$$ClassDataImplCopyWith<$Res>
    implements $ClassDataCopyWith<$Res> {
  factory _$$ClassDataImplCopyWith(
          _$ClassDataImpl value, $Res Function(_$ClassDataImpl) then) =
      __$$ClassDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      int? level,
      List<String>? abilities,
      String? subClass,
      @Uint8ListConverter() Uint8List image});
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
    Object? name = freezed,
    Object? level = freezed,
    Object? abilities = freezed,
    Object? subClass = freezed,
    Object? image = null,
  }) {
    return _then(_$ClassDataImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      abilities: freezed == abilities
          ? _value._abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
class _$ClassDataImpl implements _ClassData {
  const _$ClassDataImpl(
      {this.name,
      this.level,
      final List<String>? abilities,
      this.subClass,
      @Uint8ListConverter() required this.image})
      : _abilities = abilities;

  factory _$ClassDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassDataImplFromJson(json);

  @override
  final String? name;
  @override
  final int? level;
  final List<String>? _abilities;
  @override
  List<String>? get abilities {
    final value = _abilities;
    if (value == null) return null;
    if (_abilities is EqualUnmodifiableListView) return _abilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? subClass;
  @override
  @Uint8ListConverter()
  final Uint8List image;

  @override
  String toString() {
    return 'ClassData(name: $name, level: $level, abilities: $abilities, subClass: $subClass, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.level, level) || other.level == level) &&
            const DeepCollectionEquality()
                .equals(other._abilities, _abilities) &&
            (identical(other.subClass, subClass) ||
                other.subClass == subClass) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      level,
      const DeepCollectionEquality().hash(_abilities),
      subClass,
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
      {final String? name,
      final int? level,
      final List<String>? abilities,
      final String? subClass,
      @Uint8ListConverter() required final Uint8List image}) = _$ClassDataImpl;

  factory _ClassData.fromJson(Map<String, dynamic> json) =
      _$ClassDataImpl.fromJson;

  @override
  String? get name;
  @override
  int? get level;
  @override
  List<String>? get abilities;
  @override
  String? get subClass;
  @override
  @Uint8ListConverter()
  Uint8List get image;

  /// Create a copy of ClassData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassDataImplCopyWith<_$ClassDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
