import 'dart:developer';

import 'package:dnd_helper_flutter/app/creation/creation_class_page/state/creation_class_state.dart';
import 'package:dnd_helper_flutter/app/creation/creation_class_page/widgets/class_tile.dart';
import 'package:dnd_helper_flutter/app/creation/creation_state/creation_state.dart';
import 'package:dnd_helper_flutter/ui/basic_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class CreationClass extends ConsumerWidget {
  const CreationClass({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(creationClassStateProvider);
    return Scaffold(
      body: state.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Произошла ошибка'),
                Text(error.toString()),
                Text(stackTrace.toString()),
                Button(
                  onPressed: () => ref.refresh(creationClassStateProvider),
                  child: const Text('Повторить'),
                ),
              ],
            ),
          );
        },
        data: (state) => Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.center,
                  child: ConstrainedBox(
                    // TODO обсудить
                    constraints: const BoxConstraints(maxWidth: 1000),
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        double iconSize = constraints.maxWidth / 5;

                        int crossAxisCount =
                            constraints.maxWidth >= 600 ? 4 : 3;

                        return GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: crossAxisCount,
                            mainAxisSpacing: 0,
                            crossAxisSpacing: 0,
                          ),
                          itemCount: state.classes.length,
                          itemBuilder: (context, index) {
                            final classData = state.classes[index];
                            final isSelected = state.selectedClassName ==
                                state.classes[index].name;

                            return ClassTile(
                              dndClass: classData,
                              iconSize: iconSize,
                              isSelected: isSelected,
                              onTap: () => ref
                                  .read(creationClassStateProvider.notifier)
                                  .onSelectClassTap(classData),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
                ConstrainedBox(
                  // TODO обсудить
                  constraints: const BoxConstraints(maxWidth: 1000),
                  child: DividerWithText(text: state.selectedClassName),
                ),
                const SizedBox(height: 20),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 1000),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        SelectableText(
                          state.selectedClassName == null
                              ? ''
                              : 'Информация о ${state.selectedClassName}',
                          style: const TextStyle(fontSize: 20),
                        ),
                        if (state.selectedClassData != null)
                          SelectableText(
                              ' ${state.selectedClassData!.description}'),
                        const SizedBox(height: 20),
                        if (state.selectedClassData != null)
                          SelectableText(
                              'Кость хитов: ${state.selectedClassData!.hitDice}'),
                        const SizedBox(height: 10),
                        if (state.selectedClassData != null)
                          const SelectableText('Владение оружием и броней: '),
                        if (state.selectedClassData != null &&
                            state.selectedClassData!.proficienciesWeapons
                                .isNotEmpty)
                          SelectableText(state
                              .selectedClassData!.proficienciesWeapons
                              .join(', ')),
                        if (state.selectedClassData != null &&
                            state.selectedClassData!.proficienciesArmor
                                .isNotEmpty)
                          SelectableText(
                              ' ${state.selectedClassData!.proficienciesArmor.join(', ')}'),
                      ],
                    ),
                  ),
                ),
                const Gap(16),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 600),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const ToBackPageButton(),
                      const Gap(10),
                      if (state.selectedClassName != null)
                        Button(
                          onPressed: () {
                            ref
                                .read(creationStateProvider.notifier)
                                .setClass(state.selectedClassData!);
                            context.push('/creation_race');
                          },
                          child: const Text('Далее'),
                        ),
                    ],
                  ),
                ),
                const Gap(16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
