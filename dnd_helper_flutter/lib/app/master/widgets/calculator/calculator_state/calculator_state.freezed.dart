// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calculator_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CalculatorParameters {
  int get calculatedValue => throw _privateConstructorUsedError;
  String? get temporalHits => throw _privateConstructorUsedError;
  String get maxHits => throw _privateConstructorUsedError;
  String get currentHits => throw _privateConstructorUsedError;
  TextEditingController get controller => throw _privateConstructorUsedError;
  List<String> get buttonText => throw _privateConstructorUsedError;
  List<IconData> get icons => throw _privateConstructorUsedError;

  /// Create a copy of CalculatorParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CalculatorParametersCopyWith<CalculatorParameters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculatorParametersCopyWith<$Res> {
  factory $CalculatorParametersCopyWith(CalculatorParameters value,
          $Res Function(CalculatorParameters) then) =
      _$CalculatorParametersCopyWithImpl<$Res, CalculatorParameters>;
  @useResult
  $Res call(
      {int calculatedValue,
      String? temporalHits,
      String maxHits,
      String currentHits,
      TextEditingController controller,
      List<String> buttonText,
      List<IconData> icons});
}

/// @nodoc
class _$CalculatorParametersCopyWithImpl<$Res,
        $Val extends CalculatorParameters>
    implements $CalculatorParametersCopyWith<$Res> {
  _$CalculatorParametersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CalculatorParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calculatedValue = null,
    Object? temporalHits = freezed,
    Object? maxHits = null,
    Object? currentHits = null,
    Object? controller = null,
    Object? buttonText = null,
    Object? icons = null,
  }) {
    return _then(_value.copyWith(
      calculatedValue: null == calculatedValue
          ? _value.calculatedValue
          : calculatedValue // ignore: cast_nullable_to_non_nullable
              as int,
      temporalHits: freezed == temporalHits
          ? _value.temporalHits
          : temporalHits // ignore: cast_nullable_to_non_nullable
              as String?,
      maxHits: null == maxHits
          ? _value.maxHits
          : maxHits // ignore: cast_nullable_to_non_nullable
              as String,
      currentHits: null == currentHits
          ? _value.currentHits
          : currentHits // ignore: cast_nullable_to_non_nullable
              as String,
      controller: null == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      buttonText: null == buttonText
          ? _value.buttonText
          : buttonText // ignore: cast_nullable_to_non_nullable
              as List<String>,
      icons: null == icons
          ? _value.icons
          : icons // ignore: cast_nullable_to_non_nullable
              as List<IconData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalculatorParametersImplCopyWith<$Res>
    implements $CalculatorParametersCopyWith<$Res> {
  factory _$$CalculatorParametersImplCopyWith(_$CalculatorParametersImpl value,
          $Res Function(_$CalculatorParametersImpl) then) =
      __$$CalculatorParametersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int calculatedValue,
      String? temporalHits,
      String maxHits,
      String currentHits,
      TextEditingController controller,
      List<String> buttonText,
      List<IconData> icons});
}

/// @nodoc
class __$$CalculatorParametersImplCopyWithImpl<$Res>
    extends _$CalculatorParametersCopyWithImpl<$Res, _$CalculatorParametersImpl>
    implements _$$CalculatorParametersImplCopyWith<$Res> {
  __$$CalculatorParametersImplCopyWithImpl(_$CalculatorParametersImpl _value,
      $Res Function(_$CalculatorParametersImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalculatorParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calculatedValue = null,
    Object? temporalHits = freezed,
    Object? maxHits = null,
    Object? currentHits = null,
    Object? controller = null,
    Object? buttonText = null,
    Object? icons = null,
  }) {
    return _then(_$CalculatorParametersImpl(
      calculatedValue: null == calculatedValue
          ? _value.calculatedValue
          : calculatedValue // ignore: cast_nullable_to_non_nullable
              as int,
      temporalHits: freezed == temporalHits
          ? _value.temporalHits
          : temporalHits // ignore: cast_nullable_to_non_nullable
              as String?,
      maxHits: null == maxHits
          ? _value.maxHits
          : maxHits // ignore: cast_nullable_to_non_nullable
              as String,
      currentHits: null == currentHits
          ? _value.currentHits
          : currentHits // ignore: cast_nullable_to_non_nullable
              as String,
      controller: null == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      buttonText: null == buttonText
          ? _value._buttonText
          : buttonText // ignore: cast_nullable_to_non_nullable
              as List<String>,
      icons: null == icons
          ? _value._icons
          : icons // ignore: cast_nullable_to_non_nullable
              as List<IconData>,
    ));
  }
}

/// @nodoc

class _$CalculatorParametersImpl implements _CalculatorParameters {
  _$CalculatorParametersImpl(
      {required this.calculatedValue,
      this.temporalHits,
      this.maxHits = '10',
      this.currentHits = '0',
      required this.controller,
      final List<String> buttonText = const [
        '7',
        '8',
        '9',
        '4',
        '5',
        '6',
        '1',
        '2',
        '3',
        '0',
        '+',
        '-'
      ],
      final List<IconData> icons = const [
        Icons.add,
        Icons.remove,
        Icons.abc,
        Icons.access_alarm,
        Icons.access_time,
        Icons.accessibility,
        Icons.accessible,
        Icons.account_balance,
        Icons.account_balance_wallet,
        Icons.account_box
      ]})
      : _buttonText = buttonText,
        _icons = icons;

  @override
  final int calculatedValue;
  @override
  final String? temporalHits;
  @override
  @JsonKey()
  final String maxHits;
  @override
  @JsonKey()
  final String currentHits;
  @override
  final TextEditingController controller;
  final List<String> _buttonText;
  @override
  @JsonKey()
  List<String> get buttonText {
    if (_buttonText is EqualUnmodifiableListView) return _buttonText;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_buttonText);
  }

  final List<IconData> _icons;
  @override
  @JsonKey()
  List<IconData> get icons {
    if (_icons is EqualUnmodifiableListView) return _icons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_icons);
  }

  @override
  String toString() {
    return 'CalculatorParameters(calculatedValue: $calculatedValue, temporalHits: $temporalHits, maxHits: $maxHits, currentHits: $currentHits, controller: $controller, buttonText: $buttonText, icons: $icons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculatorParametersImpl &&
            (identical(other.calculatedValue, calculatedValue) ||
                other.calculatedValue == calculatedValue) &&
            (identical(other.temporalHits, temporalHits) ||
                other.temporalHits == temporalHits) &&
            (identical(other.maxHits, maxHits) || other.maxHits == maxHits) &&
            (identical(other.currentHits, currentHits) ||
                other.currentHits == currentHits) &&
            (identical(other.controller, controller) ||
                other.controller == controller) &&
            const DeepCollectionEquality()
                .equals(other._buttonText, _buttonText) &&
            const DeepCollectionEquality().equals(other._icons, _icons));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      calculatedValue,
      temporalHits,
      maxHits,
      currentHits,
      controller,
      const DeepCollectionEquality().hash(_buttonText),
      const DeepCollectionEquality().hash(_icons));

  /// Create a copy of CalculatorParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CalculatorParametersImplCopyWith<_$CalculatorParametersImpl>
      get copyWith =>
          __$$CalculatorParametersImplCopyWithImpl<_$CalculatorParametersImpl>(
              this, _$identity);
}

abstract class _CalculatorParameters implements CalculatorParameters {
  factory _CalculatorParameters(
      {required final int calculatedValue,
      final String? temporalHits,
      final String maxHits,
      final String currentHits,
      required final TextEditingController controller,
      final List<String> buttonText,
      final List<IconData> icons}) = _$CalculatorParametersImpl;

  @override
  int get calculatedValue;
  @override
  String? get temporalHits;
  @override
  String get maxHits;
  @override
  String get currentHits;
  @override
  TextEditingController get controller;
  @override
  List<String> get buttonText;
  @override
  List<IconData> get icons;

  /// Create a copy of CalculatorParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CalculatorParametersImplCopyWith<_$CalculatorParametersImpl>
      get copyWith => throw _privateConstructorUsedError;
}
