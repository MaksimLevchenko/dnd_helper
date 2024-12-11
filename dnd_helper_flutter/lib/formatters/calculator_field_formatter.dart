import 'package:flutter/services.dart';

class CalculatorFieldFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final RegExp regExp = RegExp(r'^[0-9+\-*/]*$');
    if (!regExp.hasMatch(newValue.text)) {
      return oldValue;
    }

    if (oldValue.text.isEmpty && RegExp(r'[+\-*/]$').hasMatch(newValue.text)) {
      return const TextEditingValue(text: '');
    }
    if (RegExp(r'[+\-*/]$').hasMatch(oldValue.text) &&
        RegExp(r'[+\-*/]$').hasMatch(newValue.text)) {
      final match = newValue.text[newValue.text.length - 1];
      final newText =
          '${newValue.text.substring(0, newValue.text.length - 2)}$match';

      return TextEditingValue(
        text: newText,
        selection: TextSelection.collapsed(offset: newText.length),
      );
    }

    if (oldValue.text.endsWith('-') && newValue.text.endsWith('+')) {
      final newText =
          '${newValue.text.substring(0, newValue.text.length - 2)}+';

      return TextEditingValue(
        text: newText,
        selection: TextSelection.collapsed(offset: newText.length),
      );
    }

    return newValue;
  }
}
