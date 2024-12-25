// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_sheet_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CharacterSheetParameters {
  CharacterData get characterData => throw _privateConstructorUsedError;
  bool get isTabBarViewVisible => throw _privateConstructorUsedError;
  int get selectedPage => throw _privateConstructorUsedError;
  int get selectedAttribute => throw _privateConstructorUsedError;
  bool get editMode => throw _privateConstructorUsedError;

  /// Create a copy of CharacterSheetParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CharacterSheetParametersCopyWith<CharacterSheetParameters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterSheetParametersCopyWith<$Res> {
  factory $CharacterSheetParametersCopyWith(CharacterSheetParameters value,
          $Res Function(CharacterSheetParameters) then) =
      _$CharacterSheetParametersCopyWithImpl<$Res, CharacterSheetParameters>;
  @useResult
  $Res call(
      {CharacterData characterData,
      bool isTabBarViewVisible,
      int selectedPage,
      int selectedAttribute,
      bool editMode});

  $CharacterDataCopyWith<$Res> get characterData;
}

/// @nodoc
class _$CharacterSheetParametersCopyWithImpl<$Res,
        $Val extends CharacterSheetParameters>
    implements $CharacterSheetParametersCopyWith<$Res> {
  _$CharacterSheetParametersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CharacterSheetParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characterData = null,
    Object? isTabBarViewVisible = null,
    Object? selectedPage = null,
    Object? selectedAttribute = null,
    Object? editMode = null,
  }) {
    return _then(_value.copyWith(
      characterData: null == characterData
          ? _value.characterData
          : characterData // ignore: cast_nullable_to_non_nullable
              as CharacterData,
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
    ) as $Val);
  }

  /// Create a copy of CharacterSheetParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CharacterDataCopyWith<$Res> get characterData {
    return $CharacterDataCopyWith<$Res>(_value.characterData, (value) {
      return _then(_value.copyWith(characterData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CharacterSheetParametersImplCopyWith<$Res>
    implements $CharacterSheetParametersCopyWith<$Res> {
  factory _$$CharacterSheetParametersImplCopyWith(
          _$CharacterSheetParametersImpl value,
          $Res Function(_$CharacterSheetParametersImpl) then) =
      __$$CharacterSheetParametersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CharacterData characterData,
      bool isTabBarViewVisible,
      int selectedPage,
      int selectedAttribute,
      bool editMode});

  @override
  $CharacterDataCopyWith<$Res> get characterData;
}

/// @nodoc
class __$$CharacterSheetParametersImplCopyWithImpl<$Res>
    extends _$CharacterSheetParametersCopyWithImpl<$Res,
        _$CharacterSheetParametersImpl>
    implements _$$CharacterSheetParametersImplCopyWith<$Res> {
  __$$CharacterSheetParametersImplCopyWithImpl(
      _$CharacterSheetParametersImpl _value,
      $Res Function(_$CharacterSheetParametersImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharacterSheetParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characterData = null,
    Object? isTabBarViewVisible = null,
    Object? selectedPage = null,
    Object? selectedAttribute = null,
    Object? editMode = null,
  }) {
    return _then(_$CharacterSheetParametersImpl(
      characterData: null == characterData
          ? _value.characterData
          : characterData // ignore: cast_nullable_to_non_nullable
              as CharacterData,
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
    ));
  }
}

/// @nodoc

class _$CharacterSheetParametersImpl implements _CharacterSheetParameters {
  _$CharacterSheetParametersImpl(
      {required this.characterData,
      this.isTabBarViewVisible = true,
      this.selectedPage = 0,
      this.selectedAttribute = 0,
      this.editMode = false});

  @override
  final CharacterData characterData;
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
  String toString() {
    return 'CharacterSheetParameters(characterData: $characterData, isTabBarViewVisible: $isTabBarViewVisible, selectedPage: $selectedPage, selectedAttribute: $selectedAttribute, editMode: $editMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterSheetParametersImpl &&
            (identical(other.characterData, characterData) ||
                other.characterData == characterData) &&
            (identical(other.isTabBarViewVisible, isTabBarViewVisible) ||
                other.isTabBarViewVisible == isTabBarViewVisible) &&
            (identical(other.selectedPage, selectedPage) ||
                other.selectedPage == selectedPage) &&
            (identical(other.selectedAttribute, selectedAttribute) ||
                other.selectedAttribute == selectedAttribute) &&
            (identical(other.editMode, editMode) ||
                other.editMode == editMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, characterData,
      isTabBarViewVisible, selectedPage, selectedAttribute, editMode);

  /// Create a copy of CharacterSheetParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterSheetParametersImplCopyWith<_$CharacterSheetParametersImpl>
      get copyWith => __$$CharacterSheetParametersImplCopyWithImpl<
          _$CharacterSheetParametersImpl>(this, _$identity);
}

abstract class _CharacterSheetParameters implements CharacterSheetParameters {
  factory _CharacterSheetParameters(
      {required final CharacterData characterData,
      final bool isTabBarViewVisible,
      final int selectedPage,
      final int selectedAttribute,
      final bool editMode}) = _$CharacterSheetParametersImpl;

  @override
  CharacterData get characterData;
  @override
  bool get isTabBarViewVisible;
  @override
  int get selectedPage;
  @override
  int get selectedAttribute;
  @override
  bool get editMode;

  /// Create a copy of CharacterSheetParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CharacterSheetParametersImplCopyWith<_$CharacterSheetParametersImpl>
      get copyWith => throw _privateConstructorUsedError;
}
