// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'start_equipment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StartEquipment _$StartEquipmentFromJson(Map<String, dynamic> json) {
  return _StartEquipment.fromJson(json);
}

/// @nodoc
mixin _$StartEquipment {
  List<EquipmentData>? get eqipment => throw _privateConstructorUsedError;
  List<ArmsData>? get arms => throw _privateConstructorUsedError;
  List<ArmorData>? get armor => throw _privateConstructorUsedError;

  /// Serializes this StartEquipment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StartEquipment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StartEquipmentCopyWith<StartEquipment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartEquipmentCopyWith<$Res> {
  factory $StartEquipmentCopyWith(
          StartEquipment value, $Res Function(StartEquipment) then) =
      _$StartEquipmentCopyWithImpl<$Res, StartEquipment>;
  @useResult
  $Res call(
      {List<EquipmentData>? eqipment,
      List<ArmsData>? arms,
      List<ArmorData>? armor});
}

/// @nodoc
class _$StartEquipmentCopyWithImpl<$Res, $Val extends StartEquipment>
    implements $StartEquipmentCopyWith<$Res> {
  _$StartEquipmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StartEquipment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eqipment = freezed,
    Object? arms = freezed,
    Object? armor = freezed,
  }) {
    return _then(_value.copyWith(
      eqipment: freezed == eqipment
          ? _value.eqipment
          : eqipment // ignore: cast_nullable_to_non_nullable
              as List<EquipmentData>?,
      arms: freezed == arms
          ? _value.arms
          : arms // ignore: cast_nullable_to_non_nullable
              as List<ArmsData>?,
      armor: freezed == armor
          ? _value.armor
          : armor // ignore: cast_nullable_to_non_nullable
              as List<ArmorData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartEquipmentImplCopyWith<$Res>
    implements $StartEquipmentCopyWith<$Res> {
  factory _$$StartEquipmentImplCopyWith(_$StartEquipmentImpl value,
          $Res Function(_$StartEquipmentImpl) then) =
      __$$StartEquipmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<EquipmentData>? eqipment,
      List<ArmsData>? arms,
      List<ArmorData>? armor});
}

/// @nodoc
class __$$StartEquipmentImplCopyWithImpl<$Res>
    extends _$StartEquipmentCopyWithImpl<$Res, _$StartEquipmentImpl>
    implements _$$StartEquipmentImplCopyWith<$Res> {
  __$$StartEquipmentImplCopyWithImpl(
      _$StartEquipmentImpl _value, $Res Function(_$StartEquipmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of StartEquipment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eqipment = freezed,
    Object? arms = freezed,
    Object? armor = freezed,
  }) {
    return _then(_$StartEquipmentImpl(
      eqipment: freezed == eqipment
          ? _value._eqipment
          : eqipment // ignore: cast_nullable_to_non_nullable
              as List<EquipmentData>?,
      arms: freezed == arms
          ? _value._arms
          : arms // ignore: cast_nullable_to_non_nullable
              as List<ArmsData>?,
      armor: freezed == armor
          ? _value._armor
          : armor // ignore: cast_nullable_to_non_nullable
              as List<ArmorData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StartEquipmentImpl implements _StartEquipment {
  _$StartEquipmentImpl(
      {final List<EquipmentData>? eqipment,
      final List<ArmsData>? arms,
      final List<ArmorData>? armor})
      : _eqipment = eqipment,
        _arms = arms,
        _armor = armor;

  factory _$StartEquipmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$StartEquipmentImplFromJson(json);

  final List<EquipmentData>? _eqipment;
  @override
  List<EquipmentData>? get eqipment {
    final value = _eqipment;
    if (value == null) return null;
    if (_eqipment is EqualUnmodifiableListView) return _eqipment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ArmsData>? _arms;
  @override
  List<ArmsData>? get arms {
    final value = _arms;
    if (value == null) return null;
    if (_arms is EqualUnmodifiableListView) return _arms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ArmorData>? _armor;
  @override
  List<ArmorData>? get armor {
    final value = _armor;
    if (value == null) return null;
    if (_armor is EqualUnmodifiableListView) return _armor;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'StartEquipment(eqipment: $eqipment, arms: $arms, armor: $armor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartEquipmentImpl &&
            const DeepCollectionEquality().equals(other._eqipment, _eqipment) &&
            const DeepCollectionEquality().equals(other._arms, _arms) &&
            const DeepCollectionEquality().equals(other._armor, _armor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_eqipment),
      const DeepCollectionEquality().hash(_arms),
      const DeepCollectionEquality().hash(_armor));

  /// Create a copy of StartEquipment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartEquipmentImplCopyWith<_$StartEquipmentImpl> get copyWith =>
      __$$StartEquipmentImplCopyWithImpl<_$StartEquipmentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StartEquipmentImplToJson(
      this,
    );
  }
}

abstract class _StartEquipment implements StartEquipment {
  factory _StartEquipment(
      {final List<EquipmentData>? eqipment,
      final List<ArmsData>? arms,
      final List<ArmorData>? armor}) = _$StartEquipmentImpl;

  factory _StartEquipment.fromJson(Map<String, dynamic> json) =
      _$StartEquipmentImpl.fromJson;

  @override
  List<EquipmentData>? get eqipment;
  @override
  List<ArmsData>? get arms;
  @override
  List<ArmorData>? get armor;

  /// Create a copy of StartEquipment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartEquipmentImplCopyWith<_$StartEquipmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
