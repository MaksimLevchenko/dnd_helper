// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'personal_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PersonalStateModel {
  Map<String, TextEditingController> get controllers =>
      throw _privateConstructorUsedError;

  /// Create a copy of PersonalStateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PersonalStateModelCopyWith<PersonalStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalStateModelCopyWith<$Res> {
  factory $PersonalStateModelCopyWith(
          PersonalStateModel value, $Res Function(PersonalStateModel) then) =
      _$PersonalStateModelCopyWithImpl<$Res, PersonalStateModel>;
  @useResult
  $Res call({Map<String, TextEditingController> controllers});
}

/// @nodoc
class _$PersonalStateModelCopyWithImpl<$Res, $Val extends PersonalStateModel>
    implements $PersonalStateModelCopyWith<$Res> {
  _$PersonalStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PersonalStateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controllers = null,
  }) {
    return _then(_value.copyWith(
      controllers: null == controllers
          ? _value.controllers
          : controllers // ignore: cast_nullable_to_non_nullable
              as Map<String, TextEditingController>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PersonalStateModelImplCopyWith<$Res>
    implements $PersonalStateModelCopyWith<$Res> {
  factory _$$PersonalStateModelImplCopyWith(_$PersonalStateModelImpl value,
          $Res Function(_$PersonalStateModelImpl) then) =
      __$$PersonalStateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, TextEditingController> controllers});
}

/// @nodoc
class __$$PersonalStateModelImplCopyWithImpl<$Res>
    extends _$PersonalStateModelCopyWithImpl<$Res, _$PersonalStateModelImpl>
    implements _$$PersonalStateModelImplCopyWith<$Res> {
  __$$PersonalStateModelImplCopyWithImpl(_$PersonalStateModelImpl _value,
      $Res Function(_$PersonalStateModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PersonalStateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controllers = null,
  }) {
    return _then(_$PersonalStateModelImpl(
      controllers: null == controllers
          ? _value._controllers
          : controllers // ignore: cast_nullable_to_non_nullable
              as Map<String, TextEditingController>,
    ));
  }
}

/// @nodoc

class _$PersonalStateModelImpl implements _PersonalStateModel {
  _$PersonalStateModelImpl(
      {required final Map<String, TextEditingController> controllers})
      : _controllers = controllers;

  final Map<String, TextEditingController> _controllers;
  @override
  Map<String, TextEditingController> get controllers {
    if (_controllers is EqualUnmodifiableMapView) return _controllers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_controllers);
  }

  @override
  String toString() {
    return 'PersonalStateModel(controllers: $controllers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonalStateModelImpl &&
            const DeepCollectionEquality()
                .equals(other._controllers, _controllers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_controllers));

  /// Create a copy of PersonalStateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonalStateModelImplCopyWith<_$PersonalStateModelImpl> get copyWith =>
      __$$PersonalStateModelImplCopyWithImpl<_$PersonalStateModelImpl>(
          this, _$identity);
}

abstract class _PersonalStateModel implements PersonalStateModel {
  factory _PersonalStateModel(
          {required final Map<String, TextEditingController> controllers}) =
      _$PersonalStateModelImpl;

  @override
  Map<String, TextEditingController> get controllers;

  /// Create a copy of PersonalStateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PersonalStateModelImplCopyWith<_$PersonalStateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
