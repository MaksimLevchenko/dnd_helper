// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subrace_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubraceData _$SubraceDataFromJson(Map<String, dynamic> json) {
  return _SubraceData.fromJson(json);
}

/// @nodoc
mixin _$SubraceData {
  String? get name => throw _privateConstructorUsedError;
  List<Map<String, String>>? get subraceFeatures =>
      throw _privateConstructorUsedError;
  List<Map<Attributes, int>>? get attributes =>
      throw _privateConstructorUsedError;

  /// Serializes this SubraceData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubraceData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubraceDataCopyWith<SubraceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubraceDataCopyWith<$Res> {
  factory $SubraceDataCopyWith(
          SubraceData value, $Res Function(SubraceData) then) =
      _$SubraceDataCopyWithImpl<$Res, SubraceData>;
  @useResult
  $Res call(
      {String? name,
      List<Map<String, String>>? subraceFeatures,
      List<Map<Attributes, int>>? attributes});
}

/// @nodoc
class _$SubraceDataCopyWithImpl<$Res, $Val extends SubraceData>
    implements $SubraceDataCopyWith<$Res> {
  _$SubraceDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubraceData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? subraceFeatures = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      subraceFeatures: freezed == subraceFeatures
          ? _value.subraceFeatures
          : subraceFeatures // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>?,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<Map<Attributes, int>>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubraceDataImplCopyWith<$Res>
    implements $SubraceDataCopyWith<$Res> {
  factory _$$SubraceDataImplCopyWith(
          _$SubraceDataImpl value, $Res Function(_$SubraceDataImpl) then) =
      __$$SubraceDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      List<Map<String, String>>? subraceFeatures,
      List<Map<Attributes, int>>? attributes});
}

/// @nodoc
class __$$SubraceDataImplCopyWithImpl<$Res>
    extends _$SubraceDataCopyWithImpl<$Res, _$SubraceDataImpl>
    implements _$$SubraceDataImplCopyWith<$Res> {
  __$$SubraceDataImplCopyWithImpl(
      _$SubraceDataImpl _value, $Res Function(_$SubraceDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubraceData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? subraceFeatures = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_$SubraceDataImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      subraceFeatures: freezed == subraceFeatures
          ? _value._subraceFeatures
          : subraceFeatures // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>?,
      attributes: freezed == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<Map<Attributes, int>>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubraceDataImpl implements _SubraceData {
  const _$SubraceDataImpl(
      {this.name,
      final List<Map<String, String>>? subraceFeatures,
      final List<Map<Attributes, int>>? attributes})
      : _subraceFeatures = subraceFeatures,
        _attributes = attributes;

  factory _$SubraceDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubraceDataImplFromJson(json);

  @override
  final String? name;
  final List<Map<String, String>>? _subraceFeatures;
  @override
  List<Map<String, String>>? get subraceFeatures {
    final value = _subraceFeatures;
    if (value == null) return null;
    if (_subraceFeatures is EqualUnmodifiableListView) return _subraceFeatures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Map<Attributes, int>>? _attributes;
  @override
  List<Map<Attributes, int>>? get attributes {
    final value = _attributes;
    if (value == null) return null;
    if (_attributes is EqualUnmodifiableListView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SubraceData(name: $name, subraceFeatures: $subraceFeatures, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubraceDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._subraceFeatures, _subraceFeatures) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(_subraceFeatures),
      const DeepCollectionEquality().hash(_attributes));

  /// Create a copy of SubraceData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubraceDataImplCopyWith<_$SubraceDataImpl> get copyWith =>
      __$$SubraceDataImplCopyWithImpl<_$SubraceDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubraceDataImplToJson(
      this,
    );
  }
}

abstract class _SubraceData implements SubraceData {
  const factory _SubraceData(
      {final String? name,
      final List<Map<String, String>>? subraceFeatures,
      final List<Map<Attributes, int>>? attributes}) = _$SubraceDataImpl;

  factory _SubraceData.fromJson(Map<String, dynamic> json) =
      _$SubraceDataImpl.fromJson;

  @override
  String? get name;
  @override
  List<Map<String, String>>? get subraceFeatures;
  @override
  List<Map<Attributes, int>>? get attributes;

  /// Create a copy of SubraceData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubraceDataImplCopyWith<_$SubraceDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
