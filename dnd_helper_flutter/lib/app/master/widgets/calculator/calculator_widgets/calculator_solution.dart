import 'package:dnd_helper_flutter/app/master/widgets/calculator/calculator_state/calculator_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CalculatorSolution extends ConsumerWidget {
  const CalculatorSolution({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(calculatorStateProvider);
    return Align(
      alignment: Alignment.centerRight,
      child: RichText(
        text: TextSpan(
          text: '${state.currentHits.toString()} / ',
          style: TextStyle(
              fontSize: 20, color: Theme.of(context).colorScheme.primary),
          children: [
            TextSpan(
              text: '${state.maxHits.toString()} ',
              style: TextStyle(
                  fontSize: 20, color: Theme.of(context).colorScheme.primary),
            ),
            if (state.temporalHits > 0)
              TextSpan(
                text: '(${state.temporalHits.toString()})',
                style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).colorScheme.tertiary),
              )
          ],
        ),
      ),
    );
  }
}
