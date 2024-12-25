import 'package:dnd_helper_flutter/app/character_sheet/pages/pages_state/pages_state.dart';
import 'package:dnd_helper_flutter/models/character_data/character_data.dart';
import 'package:dnd_helper_flutter/ui/basic_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:shimmer/shimmer.dart';

class Personality extends ConsumerWidget {
  const Personality({super.key, required this.character});
  final CharacterData character;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(pagesStateProvider(character.id!));

    return Container(
      color: Theme.of(context).colorScheme.surface,
      child: Center(
        child: state.when(
          data: (data) {
            return Column(
              children: [
                const Gap(8),
                MultilineTextField(
                  controller: data.biographyController,
                  labelText: 'Биография',
                  onEditingComplete: (text) => ref
                      .read(pagesStateProvider(character.id!).notifier)
                      .savePersonal(character.id!),
                ),
              ],
            );
          },
          error: (err, stack) => Text(
            'Ошибка: $err',
            style: TextStyle(color: Theme.of(context).colorScheme.error),
          ),
          loading: () => Shimmer.fromColors(
            baseColor: Theme.of(context).colorScheme.secondary,
            highlightColor: Theme.of(context).colorScheme.primary,
            child: Container(
              width: double.infinity,
              height: 100,
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
