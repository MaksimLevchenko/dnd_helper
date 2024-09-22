import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'calculator_state.g.dart';
part 'calculator_state.freezed.dart';

@Riverpod(keepAlive: true)
class CalculatorState extends _$CalculatorState {
  @override
  FutureOr<CalculatorParameters> build() async {
    return CalculatorParameters(calculatedValue: 0);
  }

  void updateCalculatedValue(int newValue) {
    state = AsyncValue.data(
      newValue > 0
          ? state.value!.copyWith(calculatedValue: newValue)
          : state.value!.copyWith(calculatedValue: 0),
    );
  }
}

@freezed
class CalculatorParameters with _$CalculatorParameters {
  factory CalculatorParameters({
    required int calculatedValue,
    String? temporalHits,
    @Default('10') String maxHits,
    @Default('0') String currentHits,
  }) = _CalculatorParameters;
}
