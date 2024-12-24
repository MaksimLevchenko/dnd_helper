// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'creation_class_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreationClassParameters {
  List<ClassData> get classes => throw _privateConstructorUsedError;
  String? get selectedClassName => throw _privateConstructorUsedError;
  ClassData? get selectedClassData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreationClassParametersCopyWith<CreationClassParameters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreationClassParametersCopyWith<$Res> {
  factory $CreationClassParametersCopyWith(CreationClassParameters value,
          $Res Function(CreationClassParameters) then) =
      _$CreationClassParametersCopyWithImpl<$Res, CreationClassParameters>;
  @useResult
  $Res call(
      {List<ClassData> classes,
      String? selectedClassName,
      ClassData? selectedClassData});

  $ClassDataCopyWith<$Res>? get selectedClassData;
}

/// @nodoc
class _$CreationClassParametersCopyWithImpl<$Res,
        $Val extends CreationClassParameters>
    implements $CreationClassParametersCopyWith<$Res> {
  _$CreationClassParametersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classes = null,
    Object? selectedClassName = freezed,
    Object? selectedClassData = freezed,
  }) {
    return _then(_value.copyWith(
      classes: null == classes
          ? _value.classes
          : classes // ignore: cast_nullable_to_non_nullable
              as List<ClassData>,
      selectedClassName: freezed == selectedClassName
          ? _value.selectedClassName
          : selectedClassName // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedClassData: freezed == selectedClassData
          ? _value.selectedClassData
          : selectedClassData // ignore: cast_nullable_to_non_nullable
              as ClassData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ClassDataCopyWith<$Res>? get selectedClassData {
    if (_value.selectedClassData == null) {
      return null;
    }

    return $ClassDataCopyWith<$Res>(_value.selectedClassData!, (value) {
      return _then(_value.copyWith(selectedClassData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreationClassParametersImplCopyWith<$Res>
    implements $CreationClassParametersCopyWith<$Res> {
  factory _$$CreationClassParametersImplCopyWith(
          _$CreationClassParametersImpl value,
          $Res Function(_$CreationClassParametersImpl) then) =
      __$$CreationClassParametersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ClassData> classes,
      String? selectedClassName,
      ClassData? selectedClassData});

  @override
  $ClassDataCopyWith<$Res>? get selectedClassData;
}

/// @nodoc
class __$$CreationClassParametersImplCopyWithImpl<$Res>
    extends _$CreationClassParametersCopyWithImpl<$Res,
        _$CreationClassParametersImpl>
    implements _$$CreationClassParametersImplCopyWith<$Res> {
  __$$CreationClassParametersImplCopyWithImpl(
      _$CreationClassParametersImpl _value,
      $Res Function(_$CreationClassParametersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classes = null,
    Object? selectedClassName = freezed,
    Object? selectedClassData = freezed,
  }) {
    return _then(_$CreationClassParametersImpl(
      classes: null == classes
          ? _value._classes
          : classes // ignore: cast_nullable_to_non_nullable
              as List<ClassData>,
      selectedClassName: freezed == selectedClassName
          ? _value.selectedClassName
          : selectedClassName // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedClassData: freezed == selectedClassData
          ? _value.selectedClassData
          : selectedClassData // ignore: cast_nullable_to_non_nullable
              as ClassData?,
    ));
  }
}

/// @nodoc

class _$CreationClassParametersImpl implements _CreationClassParameters {
  _$CreationClassParametersImpl(
      {required final List<ClassData> classes,
      this.selectedClassName,
      this.selectedClassData})
      : _classes = classes;

  final List<ClassData> _classes;
  @override
  List<ClassData> get classes {
    if (_classes is EqualUnmodifiableListView) return _classes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_classes);
  }

  @override
  final String? selectedClassName;
  @override
  final ClassData? selectedClassData;

  @override
  String toString() {
    return 'CreationClassParameters(classes: $classes, selectedClassName: $selectedClassName, selectedClassData: $selectedClassData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreationClassParametersImpl &&
            const DeepCollectionEquality().equals(other._classes, _classes) &&
            (identical(other.selectedClassName, selectedClassName) ||
                other.selectedClassName == selectedClassName) &&
            (identical(other.selectedClassData, selectedClassData) ||
                other.selectedClassData == selectedClassData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_classes),
      selectedClassName,
      selectedClassData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreationClassParametersImplCopyWith<_$CreationClassParametersImpl>
      get copyWith => __$$CreationClassParametersImplCopyWithImpl<
          _$CreationClassParametersImpl>(this, _$identity);
}

abstract class _CreationClassParameters implements CreationClassParameters {
  factory _CreationClassParameters(
      {required final List<ClassData> classes,
      final String? selectedClassName,
      final ClassData? selectedClassData}) = _$CreationClassParametersImpl;

  @override
  List<ClassData> get classes;
  @override
  String? get selectedClassName;
  @override
  ClassData? get selectedClassData;
  @override
  @JsonKey(ignore: true)
  _$$CreationClassParametersImplCopyWith<_$CreationClassParametersImpl>
      get copyWith => throw _privateConstructorUsedError;
}
