// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'arms_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ArmsData _$ArmsDataFromJson(Map<String, dynamic> json) {
  return _ArmsData.fromJson(json);
}

/// @nodoc
mixin _$ArmsData {
  String get name => throw _privateConstructorUsedError;
  bool? get isSimple => throw _privateConstructorUsedError;
  bool? get isMelee => throw _privateConstructorUsedError;
  CoinsData? get price => throw _privateConstructorUsedError;
  Dice? get damage => throw _privateConstructorUsedError;
  @DamageTypesConverter()
  DamageTypes? get damageType => throw _privateConstructorUsedError;
  double? get weight => throw _privateConstructorUsedError;
  List<String>? get armsFeatures => throw _privateConstructorUsedError;
  @Uint8ListConverter()
  Uint8List? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArmsDataCopyWith<ArmsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArmsDataCopyWith<$Res> {
  factory $ArmsDataCopyWith(ArmsData value, $Res Function(ArmsData) then) =
      _$ArmsDataCopyWithImpl<$Res, ArmsData>;
  @useResult
  $Res call(
      {String name,
      bool? isSimple,
      bool? isMelee,
      CoinsData? price,
      Dice? damage,
      @DamageTypesConverter() DamageTypes? damageType,
      double? weight,
      List<String>? armsFeatures,
      @Uint8ListConverter() Uint8List? image});

  $CoinsDataCopyWith<$Res>? get price;
}

/// @nodoc
class _$ArmsDataCopyWithImpl<$Res, $Val extends ArmsData>
    implements $ArmsDataCopyWith<$Res> {
  _$ArmsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? isSimple = freezed,
    Object? isMelee = freezed,
    Object? price = freezed,
    Object? damage = freezed,
    Object? damageType = freezed,
    Object? weight = freezed,
    Object? armsFeatures = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isSimple: freezed == isSimple
          ? _value.isSimple
          : isSimple // ignore: cast_nullable_to_non_nullable
              as bool?,
      isMelee: freezed == isMelee
          ? _value.isMelee
          : isMelee // ignore: cast_nullable_to_non_nullable
              as bool?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as CoinsData?,
      damage: freezed == damage
          ? _value.damage
          : damage // ignore: cast_nullable_to_non_nullable
              as Dice?,
      damageType: freezed == damageType
          ? _value.damageType
          : damageType // ignore: cast_nullable_to_non_nullable
              as DamageTypes?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      armsFeatures: freezed == armsFeatures
          ? _value.armsFeatures
          : armsFeatures // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoinsDataCopyWith<$Res>? get price {
    if (_value.price == null) {
      return null;
    }

    return $CoinsDataCopyWith<$Res>(_value.price!, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ArmsDataImplCopyWith<$Res>
    implements $ArmsDataCopyWith<$Res> {
  factory _$$ArmsDataImplCopyWith(
          _$ArmsDataImpl value, $Res Function(_$ArmsDataImpl) then) =
      __$$ArmsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      bool? isSimple,
      bool? isMelee,
      CoinsData? price,
      Dice? damage,
      @DamageTypesConverter() DamageTypes? damageType,
      double? weight,
      List<String>? armsFeatures,
      @Uint8ListConverter() Uint8List? image});

  @override
  $CoinsDataCopyWith<$Res>? get price;
}

/// @nodoc
class __$$ArmsDataImplCopyWithImpl<$Res>
    extends _$ArmsDataCopyWithImpl<$Res, _$ArmsDataImpl>
    implements _$$ArmsDataImplCopyWith<$Res> {
  __$$ArmsDataImplCopyWithImpl(
      _$ArmsDataImpl _value, $Res Function(_$ArmsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? isSimple = freezed,
    Object? isMelee = freezed,
    Object? price = freezed,
    Object? damage = freezed,
    Object? damageType = freezed,
    Object? weight = freezed,
    Object? armsFeatures = freezed,
    Object? image = freezed,
  }) {
    return _then(_$ArmsDataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isSimple: freezed == isSimple
          ? _value.isSimple
          : isSimple // ignore: cast_nullable_to_non_nullable
              as bool?,
      isMelee: freezed == isMelee
          ? _value.isMelee
          : isMelee // ignore: cast_nullable_to_non_nullable
              as bool?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as CoinsData?,
      damage: freezed == damage
          ? _value.damage
          : damage // ignore: cast_nullable_to_non_nullable
              as Dice?,
      damageType: freezed == damageType
          ? _value.damageType
          : damageType // ignore: cast_nullable_to_non_nullable
              as DamageTypes?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      armsFeatures: freezed == armsFeatures
          ? _value._armsFeatures
          : armsFeatures // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArmsDataImpl implements _ArmsData {
  const _$ArmsDataImpl(
      {this.name = 'name',
      this.isSimple,
      this.isMelee,
      this.price,
      this.damage,
      @DamageTypesConverter() this.damageType,
      this.weight,
      final List<String>? armsFeatures,
      @Uint8ListConverter() this.image})
      : _armsFeatures = armsFeatures;

  factory _$ArmsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArmsDataImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  final bool? isSimple;
  @override
  final bool? isMelee;
  @override
  final CoinsData? price;
  @override
  final Dice? damage;
  @override
  @DamageTypesConverter()
  final DamageTypes? damageType;
  @override
  final double? weight;
  final List<String>? _armsFeatures;
  @override
  List<String>? get armsFeatures {
    final value = _armsFeatures;
    if (value == null) return null;
    if (_armsFeatures is EqualUnmodifiableListView) return _armsFeatures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @Uint8ListConverter()
  final Uint8List? image;

  @override
  String toString() {
    return 'ArmsData(name: $name, isSimple: $isSimple, isMelee: $isMelee, price: $price, damage: $damage, damageType: $damageType, weight: $weight, armsFeatures: $armsFeatures, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArmsDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isSimple, isSimple) ||
                other.isSimple == isSimple) &&
            (identical(other.isMelee, isMelee) || other.isMelee == isMelee) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.damage, damage) || other.damage == damage) &&
            (identical(other.damageType, damageType) ||
                other.damageType == damageType) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            const DeepCollectionEquality()
                .equals(other._armsFeatures, _armsFeatures) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      isSimple,
      isMelee,
      price,
      damage,
      damageType,
      weight,
      const DeepCollectionEquality().hash(_armsFeatures),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArmsDataImplCopyWith<_$ArmsDataImpl> get copyWith =>
      __$$ArmsDataImplCopyWithImpl<_$ArmsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArmsDataImplToJson(
      this,
    );
  }
}

abstract class _ArmsData implements ArmsData {
  const factory _ArmsData(
      {final String name,
      final bool? isSimple,
      final bool? isMelee,
      final CoinsData? price,
      final Dice? damage,
      @DamageTypesConverter() final DamageTypes? damageType,
      final double? weight,
      final List<String>? armsFeatures,
      @Uint8ListConverter() final Uint8List? image}) = _$ArmsDataImpl;

  factory _ArmsData.fromJson(Map<String, dynamic> json) =
      _$ArmsDataImpl.fromJson;

  @override
  String get name;
  @override
  bool? get isSimple;
  @override
  bool? get isMelee;
  @override
  CoinsData? get price;
  @override
  Dice? get damage;
  @override
  @DamageTypesConverter()
  DamageTypes? get damageType;
  @override
  double? get weight;
  @override
  List<String>? get armsFeatures;
  @override
  @Uint8ListConverter()
  Uint8List? get image;
  @override
  @JsonKey(ignore: true)
  _$$ArmsDataImplCopyWith<_$ArmsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
