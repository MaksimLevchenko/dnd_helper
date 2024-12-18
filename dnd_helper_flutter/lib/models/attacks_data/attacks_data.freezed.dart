// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attacks_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AttacksData _$AttacksDataFromJson(Map<String, dynamic> json) {
  return _AttacksData.fromJson(json);
}

/// @nodoc
mixin _$AttacksData {
  String get name => throw _privateConstructorUsedError;
  Dice get damage => throw _privateConstructorUsedError;
  int get range => throw _privateConstructorUsedError;
  DamageTypes get damageType => throw _privateConstructorUsedError;
  ActionTypes get actionCost => throw _privateConstructorUsedError;

  /// Serializes this AttacksData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttacksData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttacksDataCopyWith<AttacksData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttacksDataCopyWith<$Res> {
  factory $AttacksDataCopyWith(
          AttacksData value, $Res Function(AttacksData) then) =
      _$AttacksDataCopyWithImpl<$Res, AttacksData>;
  @useResult
  $Res call(
      {String name,
      Dice damage,
      int range,
      DamageTypes damageType,
      ActionTypes actionCost});
}

/// @nodoc
class _$AttacksDataCopyWithImpl<$Res, $Val extends AttacksData>
    implements $AttacksDataCopyWith<$Res> {
  _$AttacksDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttacksData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? damage = null,
    Object? range = null,
    Object? damageType = null,
    Object? actionCost = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      damage: null == damage
          ? _value.damage
          : damage // ignore: cast_nullable_to_non_nullable
              as Dice,
      range: null == range
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as int,
      damageType: null == damageType
          ? _value.damageType
          : damageType // ignore: cast_nullable_to_non_nullable
              as DamageTypes,
      actionCost: null == actionCost
          ? _value.actionCost
          : actionCost // ignore: cast_nullable_to_non_nullable
              as ActionTypes,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttacksDataImplCopyWith<$Res>
    implements $AttacksDataCopyWith<$Res> {
  factory _$$AttacksDataImplCopyWith(
          _$AttacksDataImpl value, $Res Function(_$AttacksDataImpl) then) =
      __$$AttacksDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      Dice damage,
      int range,
      DamageTypes damageType,
      ActionTypes actionCost});
}

/// @nodoc
class __$$AttacksDataImplCopyWithImpl<$Res>
    extends _$AttacksDataCopyWithImpl<$Res, _$AttacksDataImpl>
    implements _$$AttacksDataImplCopyWith<$Res> {
  __$$AttacksDataImplCopyWithImpl(
      _$AttacksDataImpl _value, $Res Function(_$AttacksDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttacksData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? damage = null,
    Object? range = null,
    Object? damageType = null,
    Object? actionCost = null,
  }) {
    return _then(_$AttacksDataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      damage: null == damage
          ? _value.damage
          : damage // ignore: cast_nullable_to_non_nullable
              as Dice,
      range: null == range
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as int,
      damageType: null == damageType
          ? _value.damageType
          : damageType // ignore: cast_nullable_to_non_nullable
              as DamageTypes,
      actionCost: null == actionCost
          ? _value.actionCost
          : actionCost // ignore: cast_nullable_to_non_nullable
              as ActionTypes,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttacksDataImpl implements _AttacksData {
  _$AttacksDataImpl(
      {required this.name,
      required this.damage,
      required this.range,
      required this.damageType,
      required this.actionCost});

  factory _$AttacksDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttacksDataImplFromJson(json);

  @override
  final String name;
  @override
  final Dice damage;
  @override
  final int range;
  @override
  final DamageTypes damageType;
  @override
  final ActionTypes actionCost;

  @override
  String toString() {
    return 'AttacksData(name: $name, damage: $damage, range: $range, damageType: $damageType, actionCost: $actionCost)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttacksDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.damage, damage) || other.damage == damage) &&
            (identical(other.range, range) || other.range == range) &&
            (identical(other.damageType, damageType) ||
                other.damageType == damageType) &&
            (identical(other.actionCost, actionCost) ||
                other.actionCost == actionCost));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, damage, range, damageType, actionCost);

  /// Create a copy of AttacksData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttacksDataImplCopyWith<_$AttacksDataImpl> get copyWith =>
      __$$AttacksDataImplCopyWithImpl<_$AttacksDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttacksDataImplToJson(
      this,
    );
  }
}

abstract class _AttacksData implements AttacksData {
  factory _AttacksData(
      {required final String name,
      required final Dice damage,
      required final int range,
      required final DamageTypes damageType,
      required final ActionTypes actionCost}) = _$AttacksDataImpl;

  factory _AttacksData.fromJson(Map<String, dynamic> json) =
      _$AttacksDataImpl.fromJson;

  @override
  String get name;
  @override
  Dice get damage;
  @override
  int get range;
  @override
  DamageTypes get damageType;
  @override
  ActionTypes get actionCost;

  /// Create a copy of AttacksData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttacksDataImplCopyWith<_$AttacksDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
