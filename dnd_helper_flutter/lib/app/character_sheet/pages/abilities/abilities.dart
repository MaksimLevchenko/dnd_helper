import 'package:dnd_helper_flutter/app/character_sheet/character_sheet_state/character_sheet_state.dart';
import 'package:dnd_helper_flutter/app/character_sheet/pages/abilities/level.dart';
import 'package:dnd_helper_flutter/app/character_sheet/pages/pages_state/pages_state.dart';
import 'package:dnd_helper_flutter/models/character_data/character_data.dart';
import 'package:dnd_helper_flutter/ui/basic_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Abilities extends ConsumerWidget {
  const Abilities({super.key, required this.character});
  final CharacterData character;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(pagesStateProvider(character.id!)).when(
          skipLoadingOnRefresh: true,
          skipLoadingOnReload: true,
          data: (pagesState) {
            return Container(
              alignment: Alignment.topCenter,
              height: ref
                      .watch(characterSheetStateProvider(character.id!))
                      .value!
                      .isTabBarViewVisible
                  ? MediaQuery.of(context).size.height - 321
                  : MediaQuery.of(context).size.height - 159,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    Level(
                      character: (character),
                    ),
                    MultilineTextField(
                      labelText: 'Происхождение',
                      controller: pagesState.backstoryController,
                      onEditingComplete: (text) => ref
                          .read(pagesStateProvider(character.id!).notifier)
                          .save(character.id!),
                    ),
                    MultilineTextField(
                      labelText: 'Описание',
                      controller: pagesState.backstoryDescriptionController,
                      onEditingComplete: (text) => ref
                          .read(pagesStateProvider(character.id!).notifier)
                          .save(character.id!),
                    ),
                  ],
                ),
              ),
            );
          },
          loading: () => const CircularProgressIndicator(),
          error: (error, stack) => Text('Error: $error'),
        );
  }
}
