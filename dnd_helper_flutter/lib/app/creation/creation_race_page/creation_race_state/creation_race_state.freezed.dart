// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'creation_race_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreationRaceParameters {
  List<RaceData> get races => throw _privateConstructorUsedError;
  String? get selectedRaceName => throw _privateConstructorUsedError;
  RaceData? get selectedRaceData => throw _privateConstructorUsedError;

  /// Create a copy of CreationRaceParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreationRaceParametersCopyWith<CreationRaceParameters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreationRaceParametersCopyWith<$Res> {
  factory $CreationRaceParametersCopyWith(CreationRaceParameters value,
          $Res Function(CreationRaceParameters) then) =
      _$CreationRaceParametersCopyWithImpl<$Res, CreationRaceParameters>;
  @useResult
  $Res call(
      {List<RaceData> races,
      String? selectedRaceName,
      RaceData? selectedRaceData});

  $RaceDataCopyWith<$Res>? get selectedRaceData;
}

/// @nodoc
class _$CreationRaceParametersCopyWithImpl<$Res,
        $Val extends CreationRaceParameters>
    implements $CreationRaceParametersCopyWith<$Res> {
  _$CreationRaceParametersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreationRaceParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? races = null,
    Object? selectedRaceName = freezed,
    Object? selectedRaceData = freezed,
  }) {
    return _then(_value.copyWith(
      races: null == races
          ? _value.races
          : races // ignore: cast_nullable_to_non_nullable
              as List<RaceData>,
      selectedRaceName: freezed == selectedRaceName
          ? _value.selectedRaceName
          : selectedRaceName // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedRaceData: freezed == selectedRaceData
          ? _value.selectedRaceData
          : selectedRaceData // ignore: cast_nullable_to_non_nullable
              as RaceData?,
    ) as $Val);
  }

  /// Create a copy of CreationRaceParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RaceDataCopyWith<$Res>? get selectedRaceData {
    if (_value.selectedRaceData == null) {
      return null;
    }

    return $RaceDataCopyWith<$Res>(_value.selectedRaceData!, (value) {
      return _then(_value.copyWith(selectedRaceData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreationRaceParametersImplCopyWith<$Res>
    implements $CreationRaceParametersCopyWith<$Res> {
  factory _$$CreationRaceParametersImplCopyWith(
          _$CreationRaceParametersImpl value,
          $Res Function(_$CreationRaceParametersImpl) then) =
      __$$CreationRaceParametersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<RaceData> races,
      String? selectedRaceName,
      RaceData? selectedRaceData});

  @override
  $RaceDataCopyWith<$Res>? get selectedRaceData;
}

/// @nodoc
class __$$CreationRaceParametersImplCopyWithImpl<$Res>
    extends _$CreationRaceParametersCopyWithImpl<$Res,
        _$CreationRaceParametersImpl>
    implements _$$CreationRaceParametersImplCopyWith<$Res> {
  __$$CreationRaceParametersImplCopyWithImpl(
      _$CreationRaceParametersImpl _value,
      $Res Function(_$CreationRaceParametersImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreationRaceParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? races = null,
    Object? selectedRaceName = freezed,
    Object? selectedRaceData = freezed,
  }) {
    return _then(_$CreationRaceParametersImpl(
      races: null == races
          ? _value._races
          : races // ignore: cast_nullable_to_non_nullable
              as List<RaceData>,
      selectedRaceName: freezed == selectedRaceName
          ? _value.selectedRaceName
          : selectedRaceName // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedRaceData: freezed == selectedRaceData
          ? _value.selectedRaceData
          : selectedRaceData // ignore: cast_nullable_to_non_nullable
              as RaceData?,
    ));
  }
}

/// @nodoc

class _$CreationRaceParametersImpl implements _CreationRaceParameters {
  const _$CreationRaceParametersImpl(
      {required final List<RaceData> races,
      this.selectedRaceName,
      this.selectedRaceData})
      : _races = races;

  final List<RaceData> _races;
  @override
  List<RaceData> get races {
    if (_races is EqualUnmodifiableListView) return _races;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_races);
  }

  @override
  final String? selectedRaceName;
  @override
  final RaceData? selectedRaceData;

  @override
  String toString() {
    return 'CreationRaceParameters(races: $races, selectedRaceName: $selectedRaceName, selectedRaceData: $selectedRaceData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreationRaceParametersImpl &&
            const DeepCollectionEquality().equals(other._races, _races) &&
            (identical(other.selectedRaceName, selectedRaceName) ||
                other.selectedRaceName == selectedRaceName) &&
            (identical(other.selectedRaceData, selectedRaceData) ||
                other.selectedRaceData == selectedRaceData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_races),
      selectedRaceName,
      selectedRaceData);

  /// Create a copy of CreationRaceParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreationRaceParametersImplCopyWith<_$CreationRaceParametersImpl>
      get copyWith => __$$CreationRaceParametersImplCopyWithImpl<
          _$CreationRaceParametersImpl>(this, _$identity);
}

abstract class _CreationRaceParameters implements CreationRaceParameters {
  const factory _CreationRaceParameters(
      {required final List<RaceData> races,
      final String? selectedRaceName,
      final RaceData? selectedRaceData}) = _$CreationRaceParametersImpl;

  @override
  List<RaceData> get races;
  @override
  String? get selectedRaceName;
  @override
  RaceData? get selectedRaceData;

  /// Create a copy of CreationRaceParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreationRaceParametersImplCopyWith<_$CreationRaceParametersImpl>
      get copyWith => throw _privateConstructorUsedError;
}
