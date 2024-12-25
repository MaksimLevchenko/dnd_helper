import 'package:dnd_helper_flutter/app/character_sheet/character_sheet_state/character_sheet_state.dart';
import 'package:dnd_helper_flutter/models/character_data/character_data.dart';
import 'package:dnd_helper_flutter/ui/basic_widgets.dart';
import 'package:flutter/material.dart';
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
                  SizedBox(
                    width: 150,
                    child: MultilineTextField(
                      controller: TextEditingController(),
                      labelText: 'Инициатива',
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: MultilineTextField(
                      controller: TextEditingController(),
                      labelText: 'ХП',
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: MultilineTextField(
                      controller: TextEditingController(),
                      labelText: 'КД',
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    child: MultilineTextField(
                      controller: TextEditingController(),
                      labelText: 'Скорость',
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
                      controller: TextEditingController(
                          text: data.characterData.attacks?[index].name ?? ''),
                      labelText: 'Атака ${index + 1}',
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
