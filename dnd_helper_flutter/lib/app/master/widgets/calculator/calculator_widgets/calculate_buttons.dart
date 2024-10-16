import 'package:dnd_helper_flutter/app/master/widgets/calculator/calculator_state/calculator_state.dart';
import 'package:dnd_helper_flutter/ui/basic_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum Types {
  heal,
  damage,
  temporal,
  increase,
  decrease,
}

class CalculateButtons extends ConsumerWidget {
  final Types type;
  const CalculateButtons({super.key, required this.type});

  const CalculateButtons.heal({super.key}) : type = Types.heal;
  const CalculateButtons.damage({super.key}) : type = Types.damage;
  const CalculateButtons.temporal({super.key}) : type = Types.temporal;
  const CalculateButtons.increase({super.key}) : type = Types.increase;
  const CalculateButtons.decrease({super.key}) : type = Types.decrease;

  String getButtonText(Types type) {
    switch (type) {
      case Types.heal:
        return "Лечение";
      case Types.damage:
        return "Урон";
      case Types.temporal:
        return "Временные";
      case Types.increase:
        return "Увеличение";
      case Types.decrease:
        return "Уменьшение";
      default:
        return type.toString();
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Button(
        onTap: () {
          final expression = ref
              .read(calculatorStateProvider.notifier)
              .evaluateExpression(
                  ref.read(calculatorStateProvider).controller.text);
          ref
              .read(calculatorStateProvider.notifier)
              .updateCalculatedValue(expression, type);
        },
        style: TextButton.styleFrom(
          side: BorderSide(color: Theme.of(context).colorScheme.primary),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        text: Text(
          getButtonText(type),
          style: TextStyle(
            color: type == Types.heal
                ? Theme.of(context).colorScheme.tertiary
                : type == Types.damage
                    ? Theme.of(context).colorScheme.error
                    : Theme.of(context).colorScheme.secondary,
          ),
        ),
      ),
    );
  }
}
