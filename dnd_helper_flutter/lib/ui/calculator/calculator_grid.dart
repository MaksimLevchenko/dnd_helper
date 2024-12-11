import 'package:dnd_helper_flutter/ui/calculator/calculator_state/calculator_state.dart';
import 'package:dnd_helper_flutter/ui/calculator/calculator_widgets/calculate_buttons.dart';
import 'package:dnd_helper_flutter/ui/calculator/calculator_widgets/calculator_solution.dart';
import 'package:dnd_helper_flutter/ui/calculator/calculator_widgets/calculator_text_button.dart';
import 'package:dnd_helper_flutter/ui/calculator/calculator_widgets/calculator_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CalculatorGrid extends ConsumerWidget {
  const CalculatorGrid({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(calculatorStateProvider);
    return Column(
      children: [
        LayoutGrid(
          areas: """
                 field    field    field
                 7        8        9
                 4        5        6
                 1        2        3
                 0        +        -
              """,
          columnSizes: [75.px, 75.px, 75.px],
          rowSizes: [50.px, 50.px, 50.px, 50.px, 50.px],
          children: [
            CalculatorTextField(
              controller: state.controller,
            ).inGridArea('field'),
            const CalculatorTextButton(char: '7').inGridArea('7'),
            const CalculatorTextButton(char: '8').inGridArea('8'),
            const CalculatorTextButton(char: '9').inGridArea('9'),
            const CalculatorTextButton(char: '4').inGridArea('4'),
            const CalculatorTextButton(char: '5').inGridArea('5'),
            const CalculatorTextButton(char: '6').inGridArea('6'),
            const CalculatorTextButton(char: '1').inGridArea('1'),
            const CalculatorTextButton(char: '2').inGridArea('2'),
            const CalculatorTextButton(char: '3').inGridArea('3'),
            const CalculatorTextButton(char: '0').inGridArea('0'),
            const CalculatorTextButton(char: '+').inGridArea('+'),
            const CalculatorTextButton(char: '-').inGridArea('-'),
          ],
        ),
      ],
    );
  }
}
