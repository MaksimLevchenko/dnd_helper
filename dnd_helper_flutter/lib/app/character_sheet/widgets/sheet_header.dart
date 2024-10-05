import 'package:dnd_helper_flutter/app/character_sheet/character_sheet_state/character_sheet_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart';

class SheetHeader extends ConsumerWidget {
  const SheetHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenSize = MediaQuery.of(context).size;
    final state = ref.watch(characterSheetStateProvider);
    return state.when(
      error: (error, stackTrace) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Произошла ошибка'),
              ElevatedButton(
                onPressed: () => ref.refresh(characterSheetStateProvider),
                child: const Text('Повторить'),
              ),
            ],
          ),
        );
      },
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      data: (state) => Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(state.characterData.characterName),
              RichText(
                text: TextSpan(
                    style: const TextStyle(color: Colors.black),
                    children: [
                      TextSpan(text: state.characterData.characterRace!.name),
                      const TextSpan(text: ' - '),
                      TextSpan(text: state.characterData.characterClass!.name),
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
