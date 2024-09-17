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
  Dice? get damage => throw _privateConstructorUsedError;
  int? get weight => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  @AttributesConverter()
  Attributes? get modifier => throw _privateConstructorUsedError;
  bool? get isProficient => throw _privateConstructorUsedError;
  String? get weaponType => throw _privateConstructorUsedError;
  @DamageTypesConverter()
  DamageTypes? get damageType => throw _privateConstructorUsedError;
  @Uint8ListConverter()
  Uint8List? get image => throw _privateConstructorUsedError;

  /// Serializes this ArmsData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArmsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      Dice? damage,
      int? weight,
      int? price,
      @AttributesConverter() Attributes? modifier,
      bool? isProficient,
      String? weaponType,
      @DamageTypesConverter() DamageTypes? damageType,
      @Uint8ListConverter() Uint8List? image});
}

/// @nodoc
class _$ArmsDataCopyWithImpl<$Res, $Val extends ArmsData>
    implements $ArmsDataCopyWith<$Res> {
  _$ArmsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArmsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? damage = freezed,
    Object? weight = freezed,
    Object? price = freezed,
    Object? modifier = freezed,
    Object? isProficient = freezed,
    Object? weaponType = freezed,
    Object? damageType = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      damage: freezed == damage
          ? _value.damage
          : damage // ignore: cast_nullable_to_non_nullable
              as Dice?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      modifier: freezed == modifier
          ? _value.modifier
          : modifier // ignore: cast_nullable_to_non_nullable
              as Attributes?,
      isProficient: freezed == isProficient
          ? _value.isProficient
          : isProficient // ignore: cast_nullable_to_non_nullable
              as bool?,
      weaponType: freezed == weaponType
          ? _value.weaponType
          : weaponType // ignore: cast_nullable_to_non_nullable
              as String?,
      damageType: freezed == damageType
          ? _value.damageType
          : damageType // ignore: cast_nullable_to_non_nullable
              as DamageTypes?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ) as $Val);
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
      Dice? damage,
      int? weight,
      int? price,
      @AttributesConverter() Attributes? modifier,
      bool? isProficient,
      String? weaponType,
      @DamageTypesConverter() DamageTypes? damageType,
      @Uint8ListConverter() Uint8List? image});
}

/// @nodoc
class __$$ArmsDataImplCopyWithImpl<$Res>
    extends _$ArmsDataCopyWithImpl<$Res, _$ArmsDataImpl>
    implements _$$ArmsDataImplCopyWith<$Res> {
  __$$ArmsDataImplCopyWithImpl(
      _$ArmsDataImpl _value, $Res Function(_$ArmsDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArmsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? damage = freezed,
    Object? weight = freezed,
    Object? price = freezed,
    Object? modifier = freezed,
    Object? isProficient = freezed,
    Object? weaponType = freezed,
    Object? damageType = freezed,
    Object? image = freezed,
  }) {
    return _then(_$ArmsDataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      damage: freezed == damage
          ? _value.damage
          : damage // ignore: cast_nullable_to_non_nullable
              as Dice?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      modifier: freezed == modifier
          ? _value.modifier
          : modifier // ignore: cast_nullable_to_non_nullable
              as Attributes?,
      isProficient: freezed == isProficient
          ? _value.isProficient
          : isProficient // ignore: cast_nullable_to_non_nullable
              as bool?,
      weaponType: freezed == weaponType
          ? _value.weaponType
          : weaponType // ignore: cast_nullable_to_non_nullable
              as String?,
      damageType: freezed == damageType
          ? _value.damageType
          : damageType // ignore: cast_nullable_to_non_nullable
              as DamageTypes?,
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
      this.damage,
      this.weight,
      this.price,
      @AttributesConverter() this.modifier,
      this.isProficient,
      this.weaponType,
      @DamageTypesConverter() this.damageType,
      @Uint8ListConverter() this.image});

  factory _$ArmsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArmsDataImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  final Dice? damage;
  @override
  final int? weight;
  @override
  final int? price;
  @override
  @AttributesConverter()
  final Attributes? modifier;
  @override
  final bool? isProficient;
  @override
  final String? weaponType;
  @override
  @DamageTypesConverter()
  final DamageTypes? damageType;
  @override
  @Uint8ListConverter()
  final Uint8List? image;

  @override
  String toString() {
    return 'ArmsData(name: $name, damage: $damage, weight: $weight, price: $price, modifier: $modifier, isProficient: $isProficient, weaponType: $weaponType, damageType: $damageType, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArmsDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.damage, damage) || other.damage == damage) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.modifier, modifier) ||
                other.modifier == modifier) &&
            (identical(other.isProficient, isProficient) ||
                other.isProficient == isProficient) &&
            (identical(other.weaponType, weaponType) ||
                other.weaponType == weaponType) &&
            (identical(other.damageType, damageType) ||
                other.damageType == damageType) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      damage,
      weight,
      price,
      modifier,
      isProficient,
      weaponType,
      damageType,
      const DeepCollectionEquality().hash(image));

  /// Create a copy of ArmsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      final Dice? damage,
      final int? weight,
      final int? price,
      @AttributesConverter() final Attributes? modifier,
      final bool? isProficient,
      final String? weaponType,
      @DamageTypesConverter() final DamageTypes? damageType,
      @Uint8ListConverter() final Uint8List? image}) = _$ArmsDataImpl;

  factory _ArmsData.fromJson(Map<String, dynamic> json) =
      _$ArmsDataImpl.fromJson;

  @override
  String get name;
  @override
  Dice? get damage;
  @override
  int? get weight;
  @override
  int? get price;
  @override
  @AttributesConverter()
  Attributes? get modifier;
  @override
  bool? get isProficient;
  @override
  String? get weaponType;
  @override
  @DamageTypesConverter()
  DamageTypes? get damageType;
  @override
  @Uint8ListConverter()
  Uint8List? get image;

  /// Create a copy of ArmsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArmsDataImplCopyWith<_$ArmsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
