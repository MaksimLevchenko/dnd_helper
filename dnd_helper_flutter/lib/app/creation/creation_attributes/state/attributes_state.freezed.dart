// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attributes_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AttributesStateModel {
  SelectType get selectionType => throw _privateConstructorUsedError;
  Map<Attributes, int> get attributes => throw _privateConstructorUsedError;

  /// Create a copy of AttributesStateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttributesStateModelCopyWith<AttributesStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributesStateModelCopyWith<$Res> {
  factory $AttributesStateModelCopyWith(AttributesStateModel value,
          $Res Function(AttributesStateModel) then) =
      _$AttributesStateModelCopyWithImpl<$Res, AttributesStateModel>;
  @useResult
  $Res call({SelectType selectionType, Map<Attributes, int> attributes});
}

/// @nodoc
class _$AttributesStateModelCopyWithImpl<$Res,
        $Val extends AttributesStateModel>
    implements $AttributesStateModelCopyWith<$Res> {
  _$AttributesStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttributesStateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectionType = null,
    Object? attributes = null,
  }) {
    return _then(_value.copyWith(
      selectionType: null == selectionType
          ? _value.selectionType
          : selectionType // ignore: cast_nullable_to_non_nullable
              as SelectType,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<Attributes, int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttributesStateModelImplCopyWith<$Res>
    implements $AttributesStateModelCopyWith<$Res> {
  factory _$$AttributesStateModelImplCopyWith(_$AttributesStateModelImpl value,
          $Res Function(_$AttributesStateModelImpl) then) =
      __$$AttributesStateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SelectType selectionType, Map<Attributes, int> attributes});
}

/// @nodoc
class __$$AttributesStateModelImplCopyWithImpl<$Res>
    extends _$AttributesStateModelCopyWithImpl<$Res, _$AttributesStateModelImpl>
    implements _$$AttributesStateModelImplCopyWith<$Res> {
  __$$AttributesStateModelImplCopyWithImpl(_$AttributesStateModelImpl _value,
      $Res Function(_$AttributesStateModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttributesStateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectionType = null,
    Object? attributes = null,
  }) {
    return _then(_$AttributesStateModelImpl(
      selectionType: null == selectionType
          ? _value.selectionType
          : selectionType // ignore: cast_nullable_to_non_nullable
              as SelectType,
      attributes: null == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<Attributes, int>,
    ));
  }
}

/// @nodoc

class _$AttributesStateModelImpl implements _AttributesStateModel {
  _$AttributesStateModelImpl(
      {this.selectionType = SelectType.defaultType,
      final Map<Attributes, int> attributes = const {}})
      : _attributes = attributes;

  @override
  @JsonKey()
  final SelectType selectionType;
  final Map<Attributes, int> _attributes;
  @override
  @JsonKey()
  Map<Attributes, int> get attributes {
    if (_attributes is EqualUnmodifiableMapView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_attributes);
  }

  @override
  String toString() {
    return 'AttributesStateModel(selectionType: $selectionType, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttributesStateModelImpl &&
            (identical(other.selectionType, selectionType) ||
                other.selectionType == selectionType) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectionType,
      const DeepCollectionEquality().hash(_attributes));

  /// Create a copy of AttributesStateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttributesStateModelImplCopyWith<_$AttributesStateModelImpl>
      get copyWith =>
          __$$AttributesStateModelImplCopyWithImpl<_$AttributesStateModelImpl>(
              this, _$identity);
}

abstract class _AttributesStateModel implements AttributesStateModel {
  factory _AttributesStateModel(
      {final SelectType selectionType,
      final Map<Attributes, int> attributes}) = _$AttributesStateModelImpl;

  @override
  SelectType get selectionType;
  @override
  Map<Attributes, int> get attributes;

  /// Create a copy of AttributesStateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttributesStateModelImplCopyWith<_$AttributesStateModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
