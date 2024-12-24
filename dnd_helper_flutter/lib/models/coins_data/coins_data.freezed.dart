// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coins_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CoinsData _$CoinsDataFromJson(Map<String, dynamic> json) {
  return _CoinsData.fromJson(json);
}

/// @nodoc
mixin _$CoinsData {
  int? get platinum => throw _privateConstructorUsedError;
  int? get electrum => throw _privateConstructorUsedError;
  int? get golden => throw _privateConstructorUsedError;
  int? get silver => throw _privateConstructorUsedError;
  int? get copper => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoinsDataCopyWith<CoinsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinsDataCopyWith<$Res> {
  factory $CoinsDataCopyWith(CoinsData value, $Res Function(CoinsData) then) =
      _$CoinsDataCopyWithImpl<$Res, CoinsData>;
  @useResult
  $Res call(
      {int? platinum, int? electrum, int? golden, int? silver, int? copper});
}

/// @nodoc
class _$CoinsDataCopyWithImpl<$Res, $Val extends CoinsData>
    implements $CoinsDataCopyWith<$Res> {
  _$CoinsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? platinum = freezed,
    Object? electrum = freezed,
    Object? golden = freezed,
    Object? silver = freezed,
    Object? copper = freezed,
  }) {
    return _then(_value.copyWith(
      platinum: freezed == platinum
          ? _value.platinum
          : platinum // ignore: cast_nullable_to_non_nullable
              as int?,
      electrum: freezed == electrum
          ? _value.electrum
          : electrum // ignore: cast_nullable_to_non_nullable
              as int?,
      golden: freezed == golden
          ? _value.golden
          : golden // ignore: cast_nullable_to_non_nullable
              as int?,
      silver: freezed == silver
          ? _value.silver
          : silver // ignore: cast_nullable_to_non_nullable
              as int?,
      copper: freezed == copper
          ? _value.copper
          : copper // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoinsDataImplCopyWith<$Res>
    implements $CoinsDataCopyWith<$Res> {
  factory _$$CoinsDataImplCopyWith(
          _$CoinsDataImpl value, $Res Function(_$CoinsDataImpl) then) =
      __$$CoinsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? platinum, int? electrum, int? golden, int? silver, int? copper});
}

/// @nodoc
class __$$CoinsDataImplCopyWithImpl<$Res>
    extends _$CoinsDataCopyWithImpl<$Res, _$CoinsDataImpl>
    implements _$$CoinsDataImplCopyWith<$Res> {
  __$$CoinsDataImplCopyWithImpl(
      _$CoinsDataImpl _value, $Res Function(_$CoinsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? platinum = freezed,
    Object? electrum = freezed,
    Object? golden = freezed,
    Object? silver = freezed,
    Object? copper = freezed,
  }) {
    return _then(_$CoinsDataImpl(
      platinum: freezed == platinum
          ? _value.platinum
          : platinum // ignore: cast_nullable_to_non_nullable
              as int?,
      electrum: freezed == electrum
          ? _value.electrum
          : electrum // ignore: cast_nullable_to_non_nullable
              as int?,
      golden: freezed == golden
          ? _value.golden
          : golden // ignore: cast_nullable_to_non_nullable
              as int?,
      silver: freezed == silver
          ? _value.silver
          : silver // ignore: cast_nullable_to_non_nullable
              as int?,
      copper: freezed == copper
          ? _value.copper
          : copper // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoinsDataImpl implements _CoinsData {
  const _$CoinsDataImpl(
      {this.platinum, this.electrum, this.golden, this.silver, this.copper});

  factory _$CoinsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoinsDataImplFromJson(json);

  @override
  final int? platinum;
  @override
  final int? electrum;
  @override
  final int? golden;
  @override
  final int? silver;
  @override
  final int? copper;

  @override
  String toString() {
    return 'CoinsData(platinum: $platinum, electrum: $electrum, golden: $golden, silver: $silver, copper: $copper)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoinsDataImpl &&
            (identical(other.platinum, platinum) ||
                other.platinum == platinum) &&
            (identical(other.electrum, electrum) ||
                other.electrum == electrum) &&
            (identical(other.golden, golden) || other.golden == golden) &&
            (identical(other.silver, silver) || other.silver == silver) &&
            (identical(other.copper, copper) || other.copper == copper));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, platinum, electrum, golden, silver, copper);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoinsDataImplCopyWith<_$CoinsDataImpl> get copyWith =>
      __$$CoinsDataImplCopyWithImpl<_$CoinsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoinsDataImplToJson(
      this,
    );
  }
}

abstract class _CoinsData implements CoinsData {
  const factory _CoinsData(
      {final int? platinum,
      final int? electrum,
      final int? golden,
      final int? silver,
      final int? copper}) = _$CoinsDataImpl;

  factory _CoinsData.fromJson(Map<String, dynamic> json) =
      _$CoinsDataImpl.fromJson;

  @override
  int? get platinum;
  @override
  int? get electrum;
  @override
  int? get golden;
  @override
  int? get silver;
  @override
  int? get copper;
  @override
  @JsonKey(ignore: true)
  _$$CoinsDataImplCopyWith<_$CoinsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
