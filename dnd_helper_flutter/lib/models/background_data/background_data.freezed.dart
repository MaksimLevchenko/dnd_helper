// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'background_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BackgroundData _$BackgroundDataFromJson(Map<String, dynamic> json) {
  return _BackgroundData.fromJson(json);
}

/// @nodoc
mixin _$BackgroundData {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this BackgroundData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BackgroundData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BackgroundDataCopyWith<BackgroundData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BackgroundDataCopyWith<$Res> {
  factory $BackgroundDataCopyWith(
          BackgroundData value, $Res Function(BackgroundData) then) =
      _$BackgroundDataCopyWithImpl<$Res, BackgroundData>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$BackgroundDataCopyWithImpl<$Res, $Val extends BackgroundData>
    implements $BackgroundDataCopyWith<$Res> {
  _$BackgroundDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BackgroundData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BackgroundDataImplCopyWith<$Res>
    implements $BackgroundDataCopyWith<$Res> {
  factory _$$BackgroundDataImplCopyWith(_$BackgroundDataImpl value,
          $Res Function(_$BackgroundDataImpl) then) =
      __$$BackgroundDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$BackgroundDataImplCopyWithImpl<$Res>
    extends _$BackgroundDataCopyWithImpl<$Res, _$BackgroundDataImpl>
    implements _$$BackgroundDataImplCopyWith<$Res> {
  __$$BackgroundDataImplCopyWithImpl(
      _$BackgroundDataImpl _value, $Res Function(_$BackgroundDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of BackgroundData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$BackgroundDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BackgroundDataImpl implements _BackgroundData {
  const _$BackgroundDataImpl({this.id, this.name});

  factory _$BackgroundDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BackgroundDataImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'BackgroundData(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BackgroundDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of BackgroundData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BackgroundDataImplCopyWith<_$BackgroundDataImpl> get copyWith =>
      __$$BackgroundDataImplCopyWithImpl<_$BackgroundDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BackgroundDataImplToJson(
      this,
    );
  }
}

abstract class _BackgroundData implements BackgroundData {
  const factory _BackgroundData({final int? id, final String? name}) =
      _$BackgroundDataImpl;

  factory _BackgroundData.fromJson(Map<String, dynamic> json) =
      _$BackgroundDataImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;

  /// Create a copy of BackgroundData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BackgroundDataImplCopyWith<_$BackgroundDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
