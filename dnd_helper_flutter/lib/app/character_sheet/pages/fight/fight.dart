import 'package:dnd_helper_flutter/app/character_sheet/character_sheet_state/character_sheet_state.dart';
import 'package:dnd_helper_flutter/app/character_sheet/pages/pages_state/pages_state.dart';
import 'package:dnd_helper_flutter/models/character_data/character_data.dart';
import 'package:dnd_helper_flutter/ui/basic_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Fight extends ConsumerWidget {
  const Fight({super.key, required this.character});
  final CharacterData character;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final characterSheetState =
        ref.watch(characterSheetStateProvider(character.id!));

    return characterSheetState.when(
      skipLoadingOnRefresh: true,
      skipLoadingOnReload: true,
      data: (data) {
        return Center(
          child: Column(
            children: [
              Wrap(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: const EdgeInsets.all(3.0),
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Theme.of(context).colorScheme.secondary),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Column(
                        children: [
                          const Text('Инициатива'),
                          Text(data.characterData.initiative.toString()),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: MultilineTextField(
                      controller: TextEditingController(),
                      labelText: 'ХП',
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: MultilineTextField(
                      controller: TextEditingController(),
                      labelText: 'КД',
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    child: MultilineTextField(
                      controller: TextEditingController(),
                      labelText: 'Скорость',
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: () {
                          ref
                              .read(characterSheetStateProvider(character.id!)
                                  .notifier)
                              .deleteAttack(
                                  data.characterData.attacks!.length - 1);
                        },
                        icon: const Icon(Icons.remove)),
                    IconButton(
                        onPressed: () {
                          ref
                              .read(characterSheetStateProvider(character.id!)
                                  .notifier)
                              .increaceAttacksCount();
                        },
                        icon: const Icon(Icons.add)),
                  ],
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: data.characterData.attacks?.length ?? 1,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: 250,
                    child: MultilineTextField(
                      labelText: 'Атака ${index + 1}',
                      controller:
                          ref.watch(pagesStateProvider(character.id!)).when(
                                skipLoadingOnRefresh: true,
                                skipLoadingOnReload: true,
                                data: (pagesState) =>
                                    pagesState.attacksControllers[index],
                                loading: () => TextEditingController(),
                                error: (_, __) => TextEditingController(),
                              ),
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text('Error: $error')),
    );
  }
}
