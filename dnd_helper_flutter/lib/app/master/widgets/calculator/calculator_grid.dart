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

//TODO сделать классом и вынести в отдельный файл или сделать методом
Widget calculatorTextButton(String character, WidgetRef ref) {
  final controller = ref.watch(calculatorStateProvider).controller;
  //TODO здесь и в остальных местах заменить Material Buttonы (кроме iconButton) на наши, которые лежат в ui_kit
  return TextButton(
    onPressed: () => ref
        .read(calculatorStateProvider.notifier)
        //TODO нахуя тут контроллер, если он уже есть в стейте?
        .textButtonCallback(character, controller),
    child: Text(
      character,
      style: const TextStyle(fontSize: 20),
    ),
  );
}

//TODO лучше тоже методом или классом. Эта вещь не используется, зачем она?
Widget calculatorIconButton(int index, WidgetRef ref) {
  return IconButton(
    onPressed: () =>
        ref.read(calculatorStateProvider.notifier).iconButtonCallback(index),
    //todo что такое index? Что за иконки? Что они делают? Не понятно. Лучше сделать отдельный класс с иконками и их путями, вызывать потом какой-нибудь AppIcons.plus
    icon: Icon(ref.watch(calculatorStateProvider).icons[index]),
  );
}

//TODO сделать классом и вынести в отдельный файл. Название не сокращать - calcualtorTextField
//TODO ref тут не нужен
Widget calcField(TextEditingController controller, WidgetRef ref) {
  //TODO эту штуку уносим в форматтер. Это его обязанность, listener тут избыточен и нечитаем
  controller.addListener(
    () {
      final text = controller.text;

      // Замена одного оператора на другой при вводе подряд
      if (text.length > 1) {
        if (isOperator(text[text.length - 1]) &&
            isOperator(text[text.length - 2])) {
          final newOperator = text[text.length - 1];
          controller.value = controller.value.copyWith(
            text: text.substring(0, text.length - 2) + newOperator,
            selection: TextSelection.collapsed(offset: text.length - 1),
          );
        }
      }
    },
  );

  return TextField(
    controller: controller,
    textAlign: TextAlign.right,
    decoration: const InputDecoration(
      border: OutlineInputBorder(),
    ),
    inputFormatters: Formatters().calcFormatter,
  );
}

//TODO Функции вне классов - плохо. Сделай методом класса, где она юзается. Или в domain как надстройку над string засунь
bool isOperator(String char) {
  const operators = ['+', '-', '*', '/'];
  return operators.contains(char);
}

//TODO вынести в отдельный файл
class Calculate extends ConsumerWidget {
  //TODO type - не стринг, type - enum
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
    //TODO паддинг есть в контейнере
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).colorScheme.primary),
          borderRadius: BorderRadius.circular(15),
        ),
        //TODO зачем контейнер, в который вставляем TextButton, если можно задать стиль кнопке? поле Style в помощь
        child: TextButton(
          onPressed: () {
            //TODO фуфуфу использовать ref.watch в onPressed. ref.read и только - иначе чревато багами
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

//TODO вынести в отдельный файл
class CalcSolution extends ConsumerWidget {
  const CalcSolution({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(calculatorStateProvider);
    //Todo зачем тут row, если там один текст виджет, по сути?
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          '${state.currentHits.toString()} / ',
          style: TextStyle(
              fontSize: 20, color: Theme.of(context).colorScheme.primary),
        ),
        //TODO объединить в один текст виджет. Не нравится длинная строка - сначала сделай переменную String, посчитай до return и уже тут юзай в тексте
        Text(
          '${state.maxHits.toString()} ',
          style: TextStyle(
              fontSize: 20, color: Theme.of(context).colorScheme.primary),
        ),
        //TODO объединить в один текст виджет. Можно rich text, он поможет с цветами
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

//TODO сделать классом и вынести в отдельный файл
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
