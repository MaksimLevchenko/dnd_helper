// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ThemeParameters {
  bool get isDark => throw _privateConstructorUsedError;

  /// Create a copy of ThemeParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ThemeParametersCopyWith<ThemeParameters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeParametersCopyWith<$Res> {
  factory $ThemeParametersCopyWith(
          ThemeParameters value, $Res Function(ThemeParameters) then) =
      _$ThemeParametersCopyWithImpl<$Res, ThemeParameters>;
  @useResult
  $Res call({bool isDark});
}

/// @nodoc
class _$ThemeParametersCopyWithImpl<$Res, $Val extends ThemeParameters>
    implements $ThemeParametersCopyWith<$Res> {
  _$ThemeParametersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ThemeParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDark = null,
  }) {
    return _then(_value.copyWith(
      isDark: null == isDark
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThemeParametersImplCopyWith<$Res>
    implements $ThemeParametersCopyWith<$Res> {
  factory _$$ThemeParametersImplCopyWith(_$ThemeParametersImpl value,
          $Res Function(_$ThemeParametersImpl) then) =
      __$$ThemeParametersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isDark});
}

/// @nodoc
class __$$ThemeParametersImplCopyWithImpl<$Res>
    extends _$ThemeParametersCopyWithImpl<$Res, _$ThemeParametersImpl>
    implements _$$ThemeParametersImplCopyWith<$Res> {
  __$$ThemeParametersImplCopyWithImpl(
      _$ThemeParametersImpl _value, $Res Function(_$ThemeParametersImpl) _then)
      : super(_value, _then);

  /// Create a copy of ThemeParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDark = null,
  }) {
    return _then(_$ThemeParametersImpl(
      isDark: null == isDark
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ThemeParametersImpl implements _ThemeParameters {
  const _$ThemeParametersImpl({this.isDark = true});

  @override
  @JsonKey()
  final bool isDark;

  @override
  String toString() {
    return 'ThemeParameters(isDark: $isDark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeParametersImpl &&
            (identical(other.isDark, isDark) || other.isDark == isDark));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDark);

  /// Create a copy of ThemeParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeParametersImplCopyWith<_$ThemeParametersImpl> get copyWith =>
      __$$ThemeParametersImplCopyWithImpl<_$ThemeParametersImpl>(
          this, _$identity);
}

abstract class _ThemeParameters implements ThemeParameters {
  const factory _ThemeParameters({final bool isDark}) = _$ThemeParametersImpl;

  @override
  bool get isDark;

  /// Create a copy of ThemeParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThemeParametersImplCopyWith<_$ThemeParametersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
