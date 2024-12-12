import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'calculator_state.g.dart';
part 'calculator_state.freezed.dart';

@riverpod
class CalculatorState extends _$CalculatorState {
  @override
  CalculatorParameters build() {
    return CalculatorParameters(controller: TextEditingController());
  }

  void updateCalculatedValue(int value, String type) {
    switch (type) {
      case 'heal':
        state = state.copyWith(currentHits: state.currentHits + value);
      case 'damage':
      
        state.temporalHits < value  
        ? state = state.copyWith(
          currentHits: state.currentHits + state.temporalHits - value,
          temporalHits: 0
          )
        : state = state.copyWith(
          temporalHits: state.temporalHits - value
          );
        
        state = state.copyWith(
          temporalHits: state.currentHits - value
          );
      case 'temp':
        state = state.copyWith(temporalHits: state.temporalHits + value);
    }
  }

  bool checkString(String input) {
    final RegExp regex = RegExp(r'[-+]\d*$');
    return regex.hasMatch(input);
  }

  void iconButtonCallback(int index, TextEditingController controller) {
    switch (index) {
      case 0:
        checkString(controller.text) ? controller.text += 'd' : controller.text;
      case 1:
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
      if (!RegExp(r'[0-9]').hasMatch(char) || i == expression.length - 1) {
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

  // InputFormatter для разрешения только цифр, + и -
  //TODO: Перенести в отдельный файл
  List<TextInputFormatter> inputFormatters = [
    FilteringTextInputFormatter.allow(
        RegExp(r'[0-9+-]')), // Разрешаем только цифры, + и -
    TextInputFormatter.withFunction((oldValue, newValue) {
      // Запрещаем начинать с + или -
      if (newValue.text.startsWith('+') || newValue.text.startsWith('-')) {
        return oldValue;
      }
      return newValue;
    }),
  ];
}

@freezed
class CalculatorParameters with _$CalculatorParameters {
  factory CalculatorParameters({
    @Default(0) int temporalHits,
    @Default(10) int maxHits,
    @Default(0) int currentHits,
    required TextEditingController controller,
    @Default(['7', '8', '9', '4', '5', '6', '1', '2', '3', '0', '+', '-'])
    List<String> buttonText,
    @Default([
      Icons.add,
      Icons.remove,
      Icons.abc,
      Icons.access_alarm,
      Icons.access_time,
      Icons.accessibility,
      Icons.accessible,
      Icons.account_balance,
      Icons.account_balance_wallet,
      Icons.account_box,
    ])
    List<IconData> icons,
  }) = _CalculatorParameters;
}
