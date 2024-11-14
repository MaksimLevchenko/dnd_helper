import 'package:dnd_helper_flutter/formatters/calculator_field_formatter.dart';
import 'package:flutter/material.dart';

class CalculatorTextField extends StatelessWidget {
  final TextEditingController controller;
  const CalculatorTextField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      textAlign: TextAlign.right,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
        border: const OutlineInputBorder(),
        suffixIcon: IconButton(
          onPressed: () {
            controller.text.isNotEmpty
                ? controller.text =
                    controller.text.substring(0, controller.text.length - 1)
                : null;
          },
          icon: const Icon(Icons.backspace),
        ),
      ),
      inputFormatters: [
        CalculatorFieldFormatter(),
      ],
    );
  }
}
