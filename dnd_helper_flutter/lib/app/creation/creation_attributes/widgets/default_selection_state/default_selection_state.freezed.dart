// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'default_selection_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DefaultSelectionStateModel {
  List<Attributes> get statNames => throw _privateConstructorUsedError;
  List<int> get statValues => throw _privateConstructorUsedError;
  Map<Attributes, int> get attributes => throw _privateConstructorUsedError;

  /// Create a copy of DefaultSelectionStateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DefaultSelectionStateModelCopyWith<DefaultSelectionStateModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefaultSelectionStateModelCopyWith<$Res> {
  factory $DefaultSelectionStateModelCopyWith(DefaultSelectionStateModel value,
          $Res Function(DefaultSelectionStateModel) then) =
      _$DefaultSelectionStateModelCopyWithImpl<$Res,
          DefaultSelectionStateModel>;
  @useResult
  $Res call(
      {List<Attributes> statNames,
      List<int> statValues,
      Map<Attributes, int> attributes});
}

/// @nodoc
class _$DefaultSelectionStateModelCopyWithImpl<$Res,
        $Val extends DefaultSelectionStateModel>
    implements $DefaultSelectionStateModelCopyWith<$Res> {
  _$DefaultSelectionStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DefaultSelectionStateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statNames = null,
    Object? statValues = null,
    Object? attributes = null,
  }) {
    return _then(_value.copyWith(
      statNames: null == statNames
          ? _value.statNames
          : statNames // ignore: cast_nullable_to_non_nullable
              as List<Attributes>,
      statValues: null == statValues
          ? _value.statValues
          : statValues // ignore: cast_nullable_to_non_nullable
              as List<int>,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<Attributes, int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DefaultSelectionStateModelImplCopyWith<$Res>
    implements $DefaultSelectionStateModelCopyWith<$Res> {
  factory _$$DefaultSelectionStateModelImplCopyWith(
          _$DefaultSelectionStateModelImpl value,
          $Res Function(_$DefaultSelectionStateModelImpl) then) =
      __$$DefaultSelectionStateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Attributes> statNames,
      List<int> statValues,
      Map<Attributes, int> attributes});
}

/// @nodoc
class __$$DefaultSelectionStateModelImplCopyWithImpl<$Res>
    extends _$DefaultSelectionStateModelCopyWithImpl<$Res,
        _$DefaultSelectionStateModelImpl>
    implements _$$DefaultSelectionStateModelImplCopyWith<$Res> {
  __$$DefaultSelectionStateModelImplCopyWithImpl(
      _$DefaultSelectionStateModelImpl _value,
      $Res Function(_$DefaultSelectionStateModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DefaultSelectionStateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statNames = null,
    Object? statValues = null,
    Object? attributes = null,
  }) {
    return _then(_$DefaultSelectionStateModelImpl(
      statNames: null == statNames
          ? _value._statNames
          : statNames // ignore: cast_nullable_to_non_nullable
              as List<Attributes>,
      statValues: null == statValues
          ? _value._statValues
          : statValues // ignore: cast_nullable_to_non_nullable
              as List<int>,
      attributes: null == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<Attributes, int>,
    ));
  }
}

/// @nodoc

class _$DefaultSelectionStateModelImpl implements _DefaultSelectionStateModel {
  _$DefaultSelectionStateModelImpl(
      {required final List<Attributes> statNames,
      required final List<int> statValues,
      required final Map<Attributes, int> attributes})
      : _statNames = statNames,
        _statValues = statValues,
        _attributes = attributes;

  final List<Attributes> _statNames;
  @override
  List<Attributes> get statNames {
    if (_statNames is EqualUnmodifiableListView) return _statNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_statNames);
  }

  final List<int> _statValues;
  @override
  List<int> get statValues {
    if (_statValues is EqualUnmodifiableListView) return _statValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_statValues);
  }

  final Map<Attributes, int> _attributes;
  @override
  Map<Attributes, int> get attributes {
    if (_attributes is EqualUnmodifiableMapView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_attributes);
  }

  @override
  String toString() {
    return 'DefaultSelectionStateModel(statNames: $statNames, statValues: $statValues, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefaultSelectionStateModelImpl &&
            const DeepCollectionEquality()
                .equals(other._statNames, _statNames) &&
            const DeepCollectionEquality()
                .equals(other._statValues, _statValues) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_statNames),
      const DeepCollectionEquality().hash(_statValues),
      const DeepCollectionEquality().hash(_attributes));

  /// Create a copy of DefaultSelectionStateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DefaultSelectionStateModelImplCopyWith<_$DefaultSelectionStateModelImpl>
      get copyWith => __$$DefaultSelectionStateModelImplCopyWithImpl<
          _$DefaultSelectionStateModelImpl>(this, _$identity);
}

abstract class _DefaultSelectionStateModel
    implements DefaultSelectionStateModel {
  factory _DefaultSelectionStateModel(
          {required final List<Attributes> statNames,
          required final List<int> statValues,
          required final Map<Attributes, int> attributes}) =
      _$DefaultSelectionStateModelImpl;

  @override
  List<Attributes> get statNames;
  @override
  List<int> get statValues;
  @override
  Map<Attributes, int> get attributes;

  /// Create a copy of DefaultSelectionStateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DefaultSelectionStateModelImplCopyWith<_$DefaultSelectionStateModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
