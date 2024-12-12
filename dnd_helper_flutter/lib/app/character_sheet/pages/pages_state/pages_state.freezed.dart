// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pages_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PagesStateModel {
  TextEditingController get abilitiesTextController =>
      throw _privateConstructorUsedError;

  /// Create a copy of PagesStateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PagesStateModelCopyWith<PagesStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagesStateModelCopyWith<$Res> {
  factory $PagesStateModelCopyWith(
          PagesStateModel value, $Res Function(PagesStateModel) then) =
      _$PagesStateModelCopyWithImpl<$Res, PagesStateModel>;
  @useResult
  $Res call({TextEditingController abilitiesTextController});
}

/// @nodoc
class _$PagesStateModelCopyWithImpl<$Res, $Val extends PagesStateModel>
    implements $PagesStateModelCopyWith<$Res> {
  _$PagesStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PagesStateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? abilitiesTextController = null,
  }) {
    return _then(_value.copyWith(
      abilitiesTextController: null == abilitiesTextController
          ? _value.abilitiesTextController
          : abilitiesTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PagesStateModelImplCopyWith<$Res>
    implements $PagesStateModelCopyWith<$Res> {
  factory _$$PagesStateModelImplCopyWith(_$PagesStateModelImpl value,
          $Res Function(_$PagesStateModelImpl) then) =
      __$$PagesStateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TextEditingController abilitiesTextController});
}

/// @nodoc
class __$$PagesStateModelImplCopyWithImpl<$Res>
    extends _$PagesStateModelCopyWithImpl<$Res, _$PagesStateModelImpl>
    implements _$$PagesStateModelImplCopyWith<$Res> {
  __$$PagesStateModelImplCopyWithImpl(
      _$PagesStateModelImpl _value, $Res Function(_$PagesStateModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PagesStateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? abilitiesTextController = null,
  }) {
    return _then(_$PagesStateModelImpl(
      abilitiesTextController: null == abilitiesTextController
          ? _value.abilitiesTextController
          : abilitiesTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc

class _$PagesStateModelImpl implements _PagesStateModel {
  _$PagesStateModelImpl({required this.abilitiesTextController});

  @override
  final TextEditingController abilitiesTextController;

  @override
  String toString() {
    return 'PagesStateModel(abilitiesTextController: $abilitiesTextController)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PagesStateModelImpl &&
            (identical(
                    other.abilitiesTextController, abilitiesTextController) ||
                other.abilitiesTextController == abilitiesTextController));
  }

  @override
  int get hashCode => Object.hash(runtimeType, abilitiesTextController);

  /// Create a copy of PagesStateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PagesStateModelImplCopyWith<_$PagesStateModelImpl> get copyWith =>
      __$$PagesStateModelImplCopyWithImpl<_$PagesStateModelImpl>(
          this, _$identity);
}

abstract class _PagesStateModel implements PagesStateModel {
  factory _PagesStateModel(
          {required final TextEditingController abilitiesTextController}) =
      _$PagesStateModelImpl;

  @override
  TextEditingController get abilitiesTextController;

  /// Create a copy of PagesStateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PagesStateModelImplCopyWith<_$PagesStateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
