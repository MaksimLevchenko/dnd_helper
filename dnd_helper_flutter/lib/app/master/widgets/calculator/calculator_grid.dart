import 'package:dnd_helper_flutter/app/master/widgets/calculator/calculator_state/calculator_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CalculatorGrid extends ConsumerWidget {
  const CalculatorGrid({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(calculatorStateProvider);
    return Expanded(
        child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 70,
          height: 400,
          child: ListView.separated(
            itemBuilder: (context, index) {
              return calculatorIconButton(index, state.controller, ref);
            },
            separatorBuilder: (context, index) => const SizedBox(
              height: 5.5,
            ),
            itemCount: 5,
          ),
        ),
        Column(
          children: [
            SizedBox(
              height: 400,
              width: 200,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.5,
                  ),
                  itemCount: state.buttonText.length,
                  itemBuilder: (context, index) {
                    return calculatorTextButton(
                        state.buttonText[index], state.controller, ref);
                  }),
            )
          ],
        ),
      ],
    ));
  }
}

Widget calculatorTextButton(
    String character, TextEditingController controller, WidgetRef ref) {
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

Widget calculatorIconButton(
    int index, TextEditingController controller, WidgetRef ref) {
  return IconButton(
    onPressed: () => ref
        .read(calculatorStateProvider.notifier)
        .iconButtonCallback(index, controller),
    icon: Icon(ref.watch(calculatorStateProvider).icons[index]),
  );
}
