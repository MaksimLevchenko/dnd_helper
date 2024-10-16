import 'package:dnd_helper_flutter/app/master/widgets/calculator/calculator_state/calculator_state.dart';
import 'package:dnd_helper_flutter/ui/basic_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CalculatorTextButton extends ConsumerWidget {
  final String char;
  const CalculatorTextButton({super.key, required this.char});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Button(
      onPressed: () =>
          ref.read(calculatorStateProvider.notifier).textButtonCallback(char),
      child: Text(char, style: const TextStyle(fontSize: 20)),
    );
  }
}
