import 'package:dnd_helper_flutter/app/character_sheet/character_sheet_state/character_sheet_state.dart';
import 'package:dnd_helper_flutter/ui/calculator/calculator_grid.dart';
import 'package:dnd_helper_flutter/domain/build_context_extension.dart';
import 'package:dnd_helper_flutter/ui/calculator/calculator_state/calculator_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Level extends ConsumerWidget {
  const Level({super.key, required this.characterId});
  final String characterId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final onSecondary = Theme.of(context).colorScheme.onSecondary;
    final secondary = Theme.of(context).colorScheme.secondary;
    final pageSize = context.isMobile
        ? MediaQuery.of(context).size
        : MediaQuery.of(context).size * 0.6;
    return GestureDetector(
      onTap: () => showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            width: pageSize.width,
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const CalculatorGrid(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {
                        final controller =
                            ref.read(calculatorStateProvider).controller;
                        final exp = ref
                            .read(calculatorStateProvider.notifier)
                            .evaluateExpression(controller.text);
                        ref
                            .read(characterSheetStateProvider(characterId)
                                .notifier)
                            .updateExperience(exp, ref);
                      },
                      child: const Text('experience'),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.centerRight,
            height: 14,
            width: pageSize.width * 0.2,
            decoration: BoxDecoration(
              color: secondary,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
            ),
            child: ref.watch(characterSheetStateProvider(characterId)).when(
                  data: (data) => Text(
                    'УРОВЕНЬ: ${data.characterData.level.toString()} ',
                    style: TextStyle(
                        color: onSecondary,
                        fontSize: 10,
                        fontWeight: FontWeight.bold),
                  ),
                  loading: () => const CircularProgressIndicator(),
                  error: (err, stack) => Text(
                    'Error: $err ',
                    style: TextStyle(
                      color: onSecondary,
                      fontSize: 10,
                    ),
                  ),
                ),
          ),
          const SizedBox(width: 2),
          Container(
            height: 14,
            width: context.isMobile
                ? pageSize.width * 0.70
                : pageSize.width * 0.74,
            decoration: BoxDecoration(
              color: secondary,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
            ),
            child: ref.watch(characterSheetStateProvider(characterId)).when(
                  data: (data) => Text(
                    data.characterData.nextLevelExperience() != 0
                        ? ' ${data.characterData.experience.toString()} / ${data.characterData.nextLevelExperience().toString()} '
                        : ' ${data.characterData.experience.toString()} ',
                    style: TextStyle(
                        color: onSecondary,
                        fontSize: 10,
                        fontWeight: FontWeight.bold),
                  ),
                  loading: () => const CircularProgressIndicator(),
                  error: (err, stack) => Text(
                    'Error: $err ',
                    style: TextStyle(
                      color: secondary,
                      fontSize: 10,
                    ),
                  ),
                ),
          )
        ],
      ),
    );
  }
}
