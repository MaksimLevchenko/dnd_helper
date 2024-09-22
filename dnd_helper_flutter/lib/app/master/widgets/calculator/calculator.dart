import 'package:dnd_helper_flutter/app/master/widgets/calculator/calculator_state/calculator_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Calculator extends ConsumerWidget {
  const Calculator({super.key});

  // Функция для добавления символов с проверками
  void addCharacter(String char, TextEditingController controller) {
    String currentText = controller.text;
    if (char == '+' || char == '-') {
      // Проверяем, пустое ли поле
      if (currentText.isEmpty) {
        return; // Если пустое, ничего не делаем
      }
    }
    if (char == '+' || char == '-') {
      // Проверяем, является ли последний символ знаком
      if (currentText.isNotEmpty &&
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

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double screenHeight = MediaQuery.of(context).size.height;
    double widgetWidth = 300;
    TextEditingController controller = TextEditingController();
    final asyncCalculatorState = ref.watch(calculatorStateProvider);

    int calculatedValue = 0;

    // InputFormatter для разрешения только цифр, + и -
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

    return Container(
      height: 400,
      width: widgetWidth,
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Column(
              children: [
                Text(
                  calculatedValue.toString(),
                  style: const TextStyle(fontSize: 20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 200,
                      child: TextField(
                        controller: controller,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: const TextInputType.numberWithOptions(
                          signed: true,
                        ),
                        inputFormatters: inputFormatters,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: widgetWidth,
                  ),
                  child: GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    shrinkWrap: true,
                    children: [1, 2, 3, 4, 5, 6, 7, 8, 9, 0, '+', '-']
                        .map((e) => calculatorButton('$e', controller))
                        .toList(),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextButton(
                            onPressed: () {
                              ref
                                  .read(calculatorStateProvider.notifier)
                                  .updateCalculatedValue(
                                      evaluateExpression(controller.text) +
                                          calculatedValue);
                            },
                            child: const Text(
                              'Лечение',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextButton(
                            onPressed: () {
                              ref
                                  .read(calculatorStateProvider.notifier)
                                  .updateCalculatedValue(calculatedValue -
                                      evaluateExpression(controller.text));
                            },
                            child: const Text(
                              'Урон',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: IconButton(
                        onPressed: () {
                          if (controller.text.isNotEmpty) {
                            controller.text = controller.text
                                .substring(0, controller.text.length - 1);
                          }
                        },
                        // TODO: add onLongPress to clear
                        focusColor: Theme.of(context).colorScheme.primary,
                        icon: const Icon(Icons.backspace),
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget calculatorButton(String character, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
        onPressed: () => addCharacter(character, controller),
        child: Text(
          character,
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}