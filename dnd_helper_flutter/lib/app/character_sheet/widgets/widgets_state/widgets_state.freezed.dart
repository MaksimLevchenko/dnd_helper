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
  bool get editMode => throw _privateConstructorUsedError;
  String get characterId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
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
      {bool isTabBarViewVisible,
      int selectedPage,
      int selectedAttribute,
      bool editMode,
      String characterId});
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isTabBarViewVisible = null,
    Object? selectedPage = null,
    Object? selectedAttribute = null,
    Object? editMode = null,
    Object? characterId = null,
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
      editMode: null == editMode
          ? _value.editMode
          : editMode // ignore: cast_nullable_to_non_nullable
              as bool,
      characterId: null == characterId
          ? _value.characterId
          : characterId // ignore: cast_nullable_to_non_nullable
              as String,
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
      {bool isTabBarViewVisible,
      int selectedPage,
      int selectedAttribute,
      bool editMode,
      String characterId});
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isTabBarViewVisible = null,
    Object? selectedPage = null,
    Object? selectedAttribute = null,
    Object? editMode = null,
    Object? characterId = null,
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
      editMode: null == editMode
          ? _value.editMode
          : editMode // ignore: cast_nullable_to_non_nullable
              as bool,
      characterId: null == characterId
          ? _value.characterId
          : characterId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WidgetsStateParametersImpl implements _WidgetsStateParameters {
  const _$WidgetsStateParametersImpl(
      {this.isTabBarViewVisible = true,
      this.selectedPage = 0,
      this.selectedAttribute = 0,
      this.editMode = false,
      required this.characterId});

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
  @JsonKey()
  final bool editMode;
  @override
  final String characterId;

  @override
  String toString() {
    return 'WidgetsStateParameters(isTabBarViewVisible: $isTabBarViewVisible, selectedPage: $selectedPage, selectedAttribute: $selectedAttribute, editMode: $editMode, characterId: $characterId)';
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
                other.selectedAttribute == selectedAttribute) &&
            (identical(other.editMode, editMode) ||
                other.editMode == editMode) &&
            (identical(other.characterId, characterId) ||
                other.characterId == characterId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isTabBarViewVisible,
      selectedPage, selectedAttribute, editMode, characterId);

  @JsonKey(ignore: true)
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
      final int selectedAttribute,
      final bool editMode,
      required final String characterId}) = _$WidgetsStateParametersImpl;

  @override
  bool get isTabBarViewVisible;
  @override
  int get selectedPage;
  @override
  int get selectedAttribute;
  @override
  bool get editMode;
  @override
  String get characterId;
  @override
  @JsonKey(ignore: true)
  _$$WidgetsStateParametersImplCopyWith<_$WidgetsStateParametersImpl>
      get copyWith => throw _privateConstructorUsedError;
}
