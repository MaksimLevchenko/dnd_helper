// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'widgets_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WidgetsStateParameters {
  bool get isTabBarViewVisible => throw _privateConstructorUsedError;
  int get selectedPage => throw _privateConstructorUsedError;
  int get selectedAttribute => throw _privateConstructorUsedError;

  /// Create a copy of WidgetsStateParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WidgetsStateParametersCopyWith<WidgetsStateParameters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WidgetsStateParametersCopyWith<$Res> {
  factory $WidgetsStateParametersCopyWith(WidgetsStateParameters value,
          $Res Function(WidgetsStateParameters) then) =
      _$WidgetsStateParametersCopyWithImpl<$Res, WidgetsStateParameters>;
  @useResult
  $Res call(
      {bool isTabBarViewVisible, int selectedPage, int selectedAttribute});
}

/// @nodoc
class _$WidgetsStateParametersCopyWithImpl<$Res,
        $Val extends WidgetsStateParameters>
    implements $WidgetsStateParametersCopyWith<$Res> {
  _$WidgetsStateParametersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WidgetsStateParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isTabBarViewVisible = null,
    Object? selectedPage = null,
    Object? selectedAttribute = null,
  }) {
    return _then(_value.copyWith(
      isTabBarViewVisible: null == isTabBarViewVisible
          ? _value.isTabBarViewVisible
          : isTabBarViewVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedPage: null == selectedPage
          ? _value.selectedPage
          : selectedPage // ignore: cast_nullable_to_non_nullable
              as int,
      selectedAttribute: null == selectedAttribute
          ? _value.selectedAttribute
          : selectedAttribute // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WidgetsStateParametersImplCopyWith<$Res>
    implements $WidgetsStateParametersCopyWith<$Res> {
  factory _$$WidgetsStateParametersImplCopyWith(
          _$WidgetsStateParametersImpl value,
          $Res Function(_$WidgetsStateParametersImpl) then) =
      __$$WidgetsStateParametersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isTabBarViewVisible, int selectedPage, int selectedAttribute});
}

/// @nodoc
class __$$WidgetsStateParametersImplCopyWithImpl<$Res>
    extends _$WidgetsStateParametersCopyWithImpl<$Res,
        _$WidgetsStateParametersImpl>
    implements _$$WidgetsStateParametersImplCopyWith<$Res> {
  __$$WidgetsStateParametersImplCopyWithImpl(
      _$WidgetsStateParametersImpl _value,
      $Res Function(_$WidgetsStateParametersImpl) _then)
      : super(_value, _then);

  /// Create a copy of WidgetsStateParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isTabBarViewVisible = null,
    Object? selectedPage = null,
    Object? selectedAttribute = null,
  }) {
    return _then(_$WidgetsStateParametersImpl(
      isTabBarViewVisible: null == isTabBarViewVisible
          ? _value.isTabBarViewVisible
          : isTabBarViewVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedPage: null == selectedPage
          ? _value.selectedPage
          : selectedPage // ignore: cast_nullable_to_non_nullable
              as int,
      selectedAttribute: null == selectedAttribute
          ? _value.selectedAttribute
          : selectedAttribute // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$WidgetsStateParametersImpl implements _WidgetsStateParameters {
  const _$WidgetsStateParametersImpl(
      {this.isTabBarViewVisible = false,
      this.selectedPage = 0,
      this.selectedAttribute = 0});

  @override
  @JsonKey()
  final bool isTabBarViewVisible;
  @override
  @JsonKey()
  final int selectedPage;
  @override
  @JsonKey()
  final int selectedAttribute;

  @override
  String toString() {
    return 'WidgetsStateParameters(isTabBarViewVisible: $isTabBarViewVisible, selectedPage: $selectedPage, selectedAttribute: $selectedAttribute)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WidgetsStateParametersImpl &&
            (identical(other.isTabBarViewVisible, isTabBarViewVisible) ||
                other.isTabBarViewVisible == isTabBarViewVisible) &&
            (identical(other.selectedPage, selectedPage) ||
                other.selectedPage == selectedPage) &&
            (identical(other.selectedAttribute, selectedAttribute) ||
                other.selectedAttribute == selectedAttribute));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isTabBarViewVisible, selectedPage, selectedAttribute);

  /// Create a copy of WidgetsStateParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WidgetsStateParametersImplCopyWith<_$WidgetsStateParametersImpl>
      get copyWith => __$$WidgetsStateParametersImplCopyWithImpl<
          _$WidgetsStateParametersImpl>(this, _$identity);
}

abstract class _WidgetsStateParameters implements WidgetsStateParameters {
  const factory _WidgetsStateParameters(
      {final bool isTabBarViewVisible,
      final int selectedPage,
      final int selectedAttribute}) = _$WidgetsStateParametersImpl;

  @override
  bool get isTabBarViewVisible;
  @override
  int get selectedPage;
  @override
  int get selectedAttribute;

  /// Create a copy of WidgetsStateParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WidgetsStateParametersImplCopyWith<_$WidgetsStateParametersImpl>
      get copyWith => throw _privateConstructorUsedError;
}
