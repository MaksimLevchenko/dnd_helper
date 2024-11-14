import 'package:dnd_helper_flutter/ui/calculator/calculator_grid.dart';
import 'package:dnd_helper_flutter/ui/calculator/calculator_widgets/calculate_buttons.dart';
import 'package:dnd_helper_flutter/ui/calculator/calculator_widgets/calculator_solution.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Calculator extends ConsumerWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: FittedBox(
          fit: BoxFit.contain,
          child: Column(
            children: [
              CalculatorSolution(),
              CalculatorGrid(),
              Row(
                children: [
                  CalculateButtons.temporal(),
                  CalculateButtons.heal(),
                  CalculateButtons.damage(),
                ],
              ),
              Row(
                children: [
                  CalculateButtons.increase(),
                  CalculateButtons.decrease(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
