import 'package:dnd_helper_flutter/app/master/widgets/calculator/calculator_state/calculator_state.dart';
import 'package:dnd_helper_flutter/formatters/formatters.dart';
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
              .   solution solution solution .
              .   field    field    field    backspace
              .   7        8        9        .
              .   4        5        6        .
              .   1        2        3        .
              .   0        +        -        .
              """,
          columnSizes: [50.px, 50.px, 50.px, 50.px, 50.px],
          rowSizes: [50.px, 50.px, 50.px, 50.px, 50.px, 50.px],
          children: [
            const CalcSolution().inGridArea('solution'),
            calcField(state.controller, ref).inGridArea('field'),
            backspaceButton(ref).inGridArea('backspace'),
            calculatorTextButton('7', ref).inGridArea('7'),
            calculatorTextButton('8', ref).inGridArea('8'),
            calculatorTextButton('9', ref).inGridArea('9'),
            calculatorTextButton('4', ref).inGridArea('4'),
            calculatorTextButton('5', ref).inGridArea('5'),
            calculatorTextButton('6', ref).inGridArea('6'),
            calculatorTextButton('1', ref).inGridArea('1'),
            calculatorTextButton('2', ref).inGridArea('2'),
            calculatorTextButton('3', ref).inGridArea('3'),
            calculatorTextButton('0', ref).inGridArea('0'),
            calculatorTextButton('+', ref).inGridArea('+'),
            calculatorTextButton('-', ref).inGridArea('-'),
          ],
        ),
        const Row(
          children: [
            Calculate.temporal(),
            Calculate.heal(),
            Calculate.damage(),
          ],
        ),
        const Row(
          children: [
            Calculate.increase(),
            Calculate.decrease(),
          ],
        ),
      ],
    );
  }
}

Widget calculatorTextButton(String character, WidgetRef ref) {
  final controller = ref.watch(calculatorStateProvider).controller;
  return TextButton(
    onPressed: () => ref
        .read(calculatorStateProvider.notifier)
        .textButtonCallback(character, controller),
    child: Text(
      character,
      style: const TextStyle(fontSize: 20),
    ),
  );
}

Widget calculatorIconButton(int index, WidgetRef ref) {
  return IconButton(
    onPressed: () =>
        ref.read(calculatorStateProvider.notifier).iconButtonCallback(index),
    icon: Icon(ref.watch(calculatorStateProvider).icons[index]),
  );
}

// TODO: Добавить замену знака при вводе другого знака (сложно)
Widget calcField(TextEditingController controller, WidgetRef ref) {
  return TextField(
    controller: ref.watch(calculatorStateProvider).controller,
    textAlign: TextAlign.right,
    decoration: const InputDecoration(
      border: OutlineInputBorder(),
    ),
    inputFormatters: Formatters().calcFormatter,
  );
}

class Calculate extends ConsumerWidget {
  final String type;
  const Calculate({super.key, required this.type});

  const Calculate.heal({super.key}) : type = 'heal';
  const Calculate.damage({super.key}) : type = 'damage';
  const Calculate.temporal({super.key}) : type = 'temporal';
  const Calculate.increase({super.key}) : type = 'increase';
  const Calculate.decrease({super.key}) : type = 'decrease';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(calculatorStateProvider.notifier);
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).colorScheme.primary),
          borderRadius: BorderRadius.circular(15),
        ),
        child: TextButton(
          onPressed: () {
            final expression = notifier.evaluateExpression(
                ref.watch(calculatorStateProvider).controller.text);
            notifier.updateCalculatedValue(expression, type);
          },
          child: Text(
            type,
            style: TextStyle(
              color: type == 'heal'
                  ? Theme.of(context).colorScheme.tertiary
                  : type == 'damage'
                      ? Theme.of(context).colorScheme.error
                      : Theme.of(context).colorScheme.secondary,
            ),
          ),
        ),
      ),
    );
  }
}

class CalcSolution extends ConsumerWidget {
  const CalcSolution({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(calculatorStateProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          '${state.currentHits.toString()} / ',
          style: TextStyle(
              fontSize: 20, color: Theme.of(context).colorScheme.primary),
        ),
        Text(
          '${state.maxHits.toString()} ',
          style: TextStyle(
              fontSize: 20, color: Theme.of(context).colorScheme.primary),
        ),
        Visibility(
          visible: state.temporalHits > 0,
          child: Text(
            '(${state.temporalHits.toString()})',
            style: TextStyle(
                fontSize: 20, color: Theme.of(context).colorScheme.tertiary),
          ),
        )
      ],
    );
  }
}

Widget backspaceButton(WidgetRef ref) {
  final controller = ref.watch(calculatorStateProvider).controller;
  return Center(
    child: IconButton(
      onPressed: () {
        final text = controller.text;
        if (text.isNotEmpty) {
          controller.text = text.substring(0, text.length - 1);
        }
      },
      icon: const Icon(Icons.backspace),
    ),
  );
}
