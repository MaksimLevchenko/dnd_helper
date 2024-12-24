// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'equipment_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EquipmentData _$EquipmentDataFromJson(Map<String, dynamic> json) {
  return _EquipmentData.fromJson(json);
}

/// @nodoc
mixin _$EquipmentData {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EquipmentDataCopyWith<EquipmentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EquipmentDataCopyWith<$Res> {
  factory $EquipmentDataCopyWith(
          EquipmentData value, $Res Function(EquipmentData) then) =
      _$EquipmentDataCopyWithImpl<$Res, EquipmentData>;
  @useResult
  $Res call({String name, String description});
}

/// @nodoc
class _$EquipmentDataCopyWithImpl<$Res, $Val extends EquipmentData>
    implements $EquipmentDataCopyWith<$Res> {
  _$EquipmentDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EquipmentDataImplCopyWith<$Res>
    implements $EquipmentDataCopyWith<$Res> {
  factory _$$EquipmentDataImplCopyWith(
          _$EquipmentDataImpl value, $Res Function(_$EquipmentDataImpl) then) =
      __$$EquipmentDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String description});
}

/// @nodoc
class __$$EquipmentDataImplCopyWithImpl<$Res>
    extends _$EquipmentDataCopyWithImpl<$Res, _$EquipmentDataImpl>
    implements _$$EquipmentDataImplCopyWith<$Res> {
  __$$EquipmentDataImplCopyWithImpl(
      _$EquipmentDataImpl _value, $Res Function(_$EquipmentDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_$EquipmentDataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EquipmentDataImpl implements _EquipmentData {
  _$EquipmentDataImpl({required this.name, required this.description});

  factory _$EquipmentDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$EquipmentDataImplFromJson(json);

  @override
  final String name;
  @override
  final String description;

  @override
  String toString() {
    return 'EquipmentData(name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EquipmentDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EquipmentDataImplCopyWith<_$EquipmentDataImpl> get copyWith =>
      __$$EquipmentDataImplCopyWithImpl<_$EquipmentDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EquipmentDataImplToJson(
      this,
    );
  }
}

abstract class _EquipmentData implements EquipmentData {
  factory _EquipmentData(
      {required final String name,
      required final String description}) = _$EquipmentDataImpl;

  factory _EquipmentData.fromJson(Map<String, dynamic> json) =
      _$EquipmentDataImpl.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$EquipmentDataImplCopyWith<_$EquipmentDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
