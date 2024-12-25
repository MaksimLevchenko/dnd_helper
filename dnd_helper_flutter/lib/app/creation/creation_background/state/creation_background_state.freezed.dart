// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'creation_background_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreationBackgroundStateModel {
  List<BackgroundData> get backgrounds => throw _privateConstructorUsedError;
  BackgroundData? get selectedBackground => throw _privateConstructorUsedError;
  String? get selectedBackgroundName => throw _privateConstructorUsedError;

  /// Create a copy of CreationBackgroundStateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreationBackgroundStateModelCopyWith<CreationBackgroundStateModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreationBackgroundStateModelCopyWith<$Res> {
  factory $CreationBackgroundStateModelCopyWith(
          CreationBackgroundStateModel value,
          $Res Function(CreationBackgroundStateModel) then) =
      _$CreationBackgroundStateModelCopyWithImpl<$Res,
          CreationBackgroundStateModel>;
  @useResult
  $Res call(
      {List<BackgroundData> backgrounds,
      BackgroundData? selectedBackground,
      String? selectedBackgroundName});

  $BackgroundDataCopyWith<$Res>? get selectedBackground;
}

/// @nodoc
class _$CreationBackgroundStateModelCopyWithImpl<$Res,
        $Val extends CreationBackgroundStateModel>
    implements $CreationBackgroundStateModelCopyWith<$Res> {
  _$CreationBackgroundStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreationBackgroundStateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backgrounds = null,
    Object? selectedBackground = freezed,
    Object? selectedBackgroundName = freezed,
  }) {
    return _then(_value.copyWith(
      backgrounds: null == backgrounds
          ? _value.backgrounds
          : backgrounds // ignore: cast_nullable_to_non_nullable
              as List<BackgroundData>,
      selectedBackground: freezed == selectedBackground
          ? _value.selectedBackground
          : selectedBackground // ignore: cast_nullable_to_non_nullable
              as BackgroundData?,
      selectedBackgroundName: freezed == selectedBackgroundName
          ? _value.selectedBackgroundName
          : selectedBackgroundName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of CreationBackgroundStateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BackgroundDataCopyWith<$Res>? get selectedBackground {
    if (_value.selectedBackground == null) {
      return null;
    }

    return $BackgroundDataCopyWith<$Res>(_value.selectedBackground!, (value) {
      return _then(_value.copyWith(selectedBackground: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreationRaceParametersImplCopyWith<$Res>
    implements $CreationBackgroundStateModelCopyWith<$Res> {
  factory _$$CreationRaceParametersImplCopyWith(
          _$CreationRaceParametersImpl value,
          $Res Function(_$CreationRaceParametersImpl) then) =
      __$$CreationRaceParametersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<BackgroundData> backgrounds,
      BackgroundData? selectedBackground,
      String? selectedBackgroundName});

  @override
  $BackgroundDataCopyWith<$Res>? get selectedBackground;
}

/// @nodoc
class __$$CreationRaceParametersImplCopyWithImpl<$Res>
    extends _$CreationBackgroundStateModelCopyWithImpl<$Res,
        _$CreationRaceParametersImpl>
    implements _$$CreationRaceParametersImplCopyWith<$Res> {
  __$$CreationRaceParametersImplCopyWithImpl(
      _$CreationRaceParametersImpl _value,
      $Res Function(_$CreationRaceParametersImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreationBackgroundStateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backgrounds = null,
    Object? selectedBackground = freezed,
    Object? selectedBackgroundName = freezed,
  }) {
    return _then(_$CreationRaceParametersImpl(
      backgrounds: null == backgrounds
          ? _value._backgrounds
          : backgrounds // ignore: cast_nullable_to_non_nullable
              as List<BackgroundData>,
      selectedBackground: freezed == selectedBackground
          ? _value.selectedBackground
          : selectedBackground // ignore: cast_nullable_to_non_nullable
              as BackgroundData?,
      selectedBackgroundName: freezed == selectedBackgroundName
          ? _value.selectedBackgroundName
          : selectedBackgroundName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CreationRaceParametersImpl implements _CreationRaceParameters {
  const _$CreationRaceParametersImpl(
      {required final List<BackgroundData> backgrounds,
      this.selectedBackground,
      this.selectedBackgroundName})
      : _backgrounds = backgrounds;

  final List<BackgroundData> _backgrounds;
  @override
  List<BackgroundData> get backgrounds {
    if (_backgrounds is EqualUnmodifiableListView) return _backgrounds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_backgrounds);
  }

  @override
  final BackgroundData? selectedBackground;
  @override
  final String? selectedBackgroundName;

  @override
  String toString() {
    return 'CreationBackgroundStateModel(backgrounds: $backgrounds, selectedBackground: $selectedBackground, selectedBackgroundName: $selectedBackgroundName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreationRaceParametersImpl &&
            const DeepCollectionEquality()
                .equals(other._backgrounds, _backgrounds) &&
            (identical(other.selectedBackground, selectedBackground) ||
                other.selectedBackground == selectedBackground) &&
            (identical(other.selectedBackgroundName, selectedBackgroundName) ||
                other.selectedBackgroundName == selectedBackgroundName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_backgrounds),
      selectedBackground,
      selectedBackgroundName);

  /// Create a copy of CreationBackgroundStateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreationRaceParametersImplCopyWith<_$CreationRaceParametersImpl>
      get copyWith => __$$CreationRaceParametersImplCopyWithImpl<
          _$CreationRaceParametersImpl>(this, _$identity);
}

abstract class _CreationRaceParameters implements CreationBackgroundStateModel {
  const factory _CreationRaceParameters(
      {required final List<BackgroundData> backgrounds,
      final BackgroundData? selectedBackground,
      final String? selectedBackgroundName}) = _$CreationRaceParametersImpl;

  @override
  List<BackgroundData> get backgrounds;
  @override
  BackgroundData? get selectedBackground;
  @override
  String? get selectedBackgroundName;

  /// Create a copy of CreationBackgroundStateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreationRaceParametersImplCopyWith<_$CreationRaceParametersImpl>
      get copyWith => throw _privateConstructorUsedError;
}
