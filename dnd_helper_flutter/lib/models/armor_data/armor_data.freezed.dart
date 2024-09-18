// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'armor_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ArmorData _$ArmorDataFromJson(Map<String, dynamic> json) {
  return _ArmorData.fromJson(json);
}

/// @nodoc
mixin _$ArmorData {
  String get name => throw _privateConstructorUsedError;
  int? get armorClass => throw _privateConstructorUsedError;
  bool? get grantsDexterityBonus => throw _privateConstructorUsedError;
  int? get maxDexterityBonus => throw _privateConstructorUsedError;
  int? get weight => throw _privateConstructorUsedError;
  CoinsData? get price => throw _privateConstructorUsedError;
  bool? get stelsDisadvantage => throw _privateConstructorUsedError;
  int? get minStrength => throw _privateConstructorUsedError;
  String? get armorType => throw _privateConstructorUsedError;
  @Uint8ListConverter()
  Uint8List? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArmorDataCopyWith<ArmorData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArmorDataCopyWith<$Res> {
  factory $ArmorDataCopyWith(ArmorData value, $Res Function(ArmorData) then) =
      _$ArmorDataCopyWithImpl<$Res, ArmorData>;
  @useResult
  $Res call(
      {String name,
      int? armorClass,
      bool? grantsDexterityBonus,
      int? maxDexterityBonus,
      int? weight,
      CoinsData? price,
      bool? stelsDisadvantage,
      int? minStrength,
      String? armorType,
      @Uint8ListConverter() Uint8List? image});

  $CoinsDataCopyWith<$Res>? get price;
}

/// @nodoc
class _$ArmorDataCopyWithImpl<$Res, $Val extends ArmorData>
    implements $ArmorDataCopyWith<$Res> {
  _$ArmorDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? armorClass = freezed,
    Object? grantsDexterityBonus = freezed,
    Object? maxDexterityBonus = freezed,
    Object? weight = freezed,
    Object? price = freezed,
    Object? stelsDisadvantage = freezed,
    Object? minStrength = freezed,
    Object? armorType = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      armorClass: freezed == armorClass
          ? _value.armorClass
          : armorClass // ignore: cast_nullable_to_non_nullable
              as int?,
      grantsDexterityBonus: freezed == grantsDexterityBonus
          ? _value.grantsDexterityBonus
          : grantsDexterityBonus // ignore: cast_nullable_to_non_nullable
              as bool?,
      maxDexterityBonus: freezed == maxDexterityBonus
          ? _value.maxDexterityBonus
          : maxDexterityBonus // ignore: cast_nullable_to_non_nullable
              as int?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as CoinsData?,
      stelsDisadvantage: freezed == stelsDisadvantage
          ? _value.stelsDisadvantage
          : stelsDisadvantage // ignore: cast_nullable_to_non_nullable
              as bool?,
      minStrength: freezed == minStrength
          ? _value.minStrength
          : minStrength // ignore: cast_nullable_to_non_nullable
              as int?,
      armorType: freezed == armorType
          ? _value.armorType
          : armorType // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$ArmorDataImplCopyWith<$Res>
    implements $ArmorDataCopyWith<$Res> {
  factory _$$ArmorDataImplCopyWith(
          _$ArmorDataImpl value, $Res Function(_$ArmorDataImpl) then) =
      __$$ArmorDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      int? armorClass,
      bool? grantsDexterityBonus,
      int? maxDexterityBonus,
      int? weight,
      CoinsData? price,
      bool? stelsDisadvantage,
      int? minStrength,
      String? armorType,
      @Uint8ListConverter() Uint8List? image});

  @override
  $CoinsDataCopyWith<$Res>? get price;
}

/// @nodoc
class __$$ArmorDataImplCopyWithImpl<$Res>
    extends _$ArmorDataCopyWithImpl<$Res, _$ArmorDataImpl>
    implements _$$ArmorDataImplCopyWith<$Res> {
  __$$ArmorDataImplCopyWithImpl(
      _$ArmorDataImpl _value, $Res Function(_$ArmorDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? armorClass = freezed,
    Object? grantsDexterityBonus = freezed,
    Object? maxDexterityBonus = freezed,
    Object? weight = freezed,
    Object? price = freezed,
    Object? stelsDisadvantage = freezed,
    Object? minStrength = freezed,
    Object? armorType = freezed,
    Object? image = freezed,
  }) {
    return _then(_$ArmorDataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      armorClass: freezed == armorClass
          ? _value.armorClass
          : armorClass // ignore: cast_nullable_to_non_nullable
              as int?,
      grantsDexterityBonus: freezed == grantsDexterityBonus
          ? _value.grantsDexterityBonus
          : grantsDexterityBonus // ignore: cast_nullable_to_non_nullable
              as bool?,
      maxDexterityBonus: freezed == maxDexterityBonus
          ? _value.maxDexterityBonus
          : maxDexterityBonus // ignore: cast_nullable_to_non_nullable
              as int?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as CoinsData?,
      stelsDisadvantage: freezed == stelsDisadvantage
          ? _value.stelsDisadvantage
          : stelsDisadvantage // ignore: cast_nullable_to_non_nullable
              as bool?,
      minStrength: freezed == minStrength
          ? _value.minStrength
          : minStrength // ignore: cast_nullable_to_non_nullable
              as int?,
      armorType: freezed == armorType
          ? _value.armorType
          : armorType // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArmorDataImpl implements _ArmorData {
  const _$ArmorDataImpl(
      {this.name = 'name',
      this.armorClass,
      this.grantsDexterityBonus,
      this.maxDexterityBonus,
      this.weight,
      this.price,
      this.stelsDisadvantage,
      this.minStrength,
      this.armorType,
      @Uint8ListConverter() this.image});

  factory _$ArmorDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArmorDataImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  final int? armorClass;
  @override
  final bool? grantsDexterityBonus;
  @override
  final int? maxDexterityBonus;
  @override
  final int? weight;
  @override
  final CoinsData? price;
  @override
  final bool? stelsDisadvantage;
  @override
  final int? minStrength;
  @override
  final String? armorType;
  @override
  @Uint8ListConverter()
  final Uint8List? image;

  @override
  String toString() {
    return 'ArmorData(name: $name, armorClass: $armorClass, grantsDexterityBonus: $grantsDexterityBonus, maxDexterityBonus: $maxDexterityBonus, weight: $weight, price: $price, stelsDisadvantage: $stelsDisadvantage, minStrength: $minStrength, armorType: $armorType, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArmorDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.armorClass, armorClass) ||
                other.armorClass == armorClass) &&
            (identical(other.grantsDexterityBonus, grantsDexterityBonus) ||
                other.grantsDexterityBonus == grantsDexterityBonus) &&
            (identical(other.maxDexterityBonus, maxDexterityBonus) ||
                other.maxDexterityBonus == maxDexterityBonus) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.stelsDisadvantage, stelsDisadvantage) ||
                other.stelsDisadvantage == stelsDisadvantage) &&
            (identical(other.minStrength, minStrength) ||
                other.minStrength == minStrength) &&
            (identical(other.armorType, armorType) ||
                other.armorType == armorType) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      armorClass,
      grantsDexterityBonus,
      maxDexterityBonus,
      weight,
      price,
      stelsDisadvantage,
      minStrength,
      armorType,
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArmorDataImplCopyWith<_$ArmorDataImpl> get copyWith =>
      __$$ArmorDataImplCopyWithImpl<_$ArmorDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArmorDataImplToJson(
      this,
    );
  }
}

abstract class _ArmorData implements ArmorData {
  const factory _ArmorData(
      {final String name,
      final int? armorClass,
      final bool? grantsDexterityBonus,
      final int? maxDexterityBonus,
      final int? weight,
      final CoinsData? price,
      final bool? stelsDisadvantage,
      final int? minStrength,
      final String? armorType,
      @Uint8ListConverter() final Uint8List? image}) = _$ArmorDataImpl;

  factory _ArmorData.fromJson(Map<String, dynamic> json) =
      _$ArmorDataImpl.fromJson;

  @override
  String get name;
  @override
  int? get armorClass;
  @override
  bool? get grantsDexterityBonus;
  @override
  int? get maxDexterityBonus;
  @override
  int? get weight;
  @override
  CoinsData? get price;
  @override
  bool? get stelsDisadvantage;
  @override
  int? get minStrength;
  @override
  String? get armorType;
  @override
  @Uint8ListConverter()
  Uint8List? get image;
  @override
  @JsonKey(ignore: true)
  _$$ArmorDataImplCopyWith<_$ArmorDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
