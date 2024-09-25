import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'calculator_state.g.dart';
part 'calculator_state.freezed.dart';

//TODO: покрасить текущие хиты
@riverpod
class CalculatorState extends _$CalculatorState {
  @override
  CalculatorParameters build() {
    return CalculatorParameters(controller: TextEditingController());
  }

  void updateCalculatedValue(int value, String type) {
    switch (type) {
      case 'heal':
        value > state.maxHits
            ? state = state.copyWith(currentHits: state.maxHits)
            : state = state.copyWith(currentHits: state.currentHits + value);
        break;
      case 'damage':
        value > state.temporalHits
            ? value < state.currentHits + state.temporalHits
                ? state = state.copyWith(
                    temporalHits: 0,
                    currentHits: state.currentHits + state.temporalHits - value)
                : state = state.copyWith(currentHits: 0)
            : state = state.copyWith(temporalHits: state.temporalHits - value);
        break;
      case 'temporal':
        state = state.copyWith(temporalHits: state.temporalHits + value);
        break;
      case 'increase':
        state = state.copyWith(maxHits: state.maxHits + value);
        break;
      case 'decrease':
        value > state.maxHits
            ? state = state.copyWith(maxHits: 0)
            : state = state.copyWith(maxHits: state.maxHits - value);
    }
    state.controller.clear();
  }

  bool checkString(String input) {
    final RegExp regex = RegExp(r'[-+]\d*$');
    return regex.hasMatch(input);
  }

  void iconButtonCallback(int index) {
    switch (index) {
      case 0:
        checkString(state.controller.text)
            ? state.controller.text += 'd4'
            : state.controller.text;
        break;
      case 1:
        // Add functionality for case 1 if needed
        break;
    }
  }

  void textButtonCallback(String char, TextEditingController controller) {
    String currentText = controller.text;
    if (char == '+' || char == '-') {
      // Проверяем, пустое ли поле
      if (currentText.isEmpty) {
        return; // Если пустое, ничего не делаем
      }
      // Проверяем, является ли последний символ знаком
      else if (currentText.isNotEmpty &&
          (currentText.endsWith('+') || currentText.endsWith('-'))) {
        // Заменяем последний знак на новый
        controller.text =
            currentText.substring(0, currentText.length - 1) + char;
      } else {
        // Добавляем знак, если последнего знака нет
        controller.text += char;
      }
    } else {
      // Просто добавляем цифры
      controller.text += char;
    }
  }

  int evaluateExpression(String expression) {
    int result = 0;
    int currentNumber = 0;
    String operation = '+';

    for (int i = 0; i < expression.length; i++) {
      String char = expression[i];

      // Проверяем, является ли символ числом
      if (RegExp(r'[0-9]').hasMatch(char)) {
        currentNumber = currentNumber * 10 + int.parse(char);
      }

      // Если символ не число или последний символ
      if (RegExp(r'[+-]').hasMatch(char) || i == expression.length - 1) {
        switch (operation) {
          case '+':
            result += currentNumber;
            break;
          case '-':
            result -= currentNumber;
            break;
        }

        // Обновляем операцию и сбрасываем текущее число
        operation = char;
        currentNumber = 0;
      }
    }
    return result;
  }
}

@freezed
class CalculatorParameters with _$CalculatorParameters {
  factory CalculatorParameters({
    @Default(0) int temporalHits,
    @Default(100) int maxHits,
    @Default(0) int currentHits,
    required TextEditingController controller,
    @Default(['7', '8', '9', '4', '5', '6', '1', '2', '3', '0', '+', '-'])
    List<String> buttonText,
    @Default([
      Icons.four_k_outlined,
      Icons.six_k_outlined,
      Icons.eight_k_outlined,
      Icons.ten_k_outlined,
      Icons.twelve_mp_outlined,
    ])
    List<IconData> icons,
  }) = _CalculatorParameters;
}
