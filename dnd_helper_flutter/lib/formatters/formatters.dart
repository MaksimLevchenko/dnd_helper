import 'package:flutter/services.dart';

class Formatters {
// InputFormatter для разрешения только цифр, + и -
  List<TextInputFormatter> calcFormatter = [
    FilteringTextInputFormatter.allow(
        RegExp(r'[0-9+-]')), // Разрешаем только цифры, +, -, к и d
    TextInputFormatter.withFunction((oldValue, newValue) {
      // Запрещаем начинать с + или -
      if (newValue.text.startsWith('+') || newValue.text.startsWith('-')) {
        return oldValue;
      }
      return newValue;
    }),
  ];
}
