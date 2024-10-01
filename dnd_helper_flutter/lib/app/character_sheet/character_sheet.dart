import 'package:dnd_helper_flutter/app/character_sheet/character_sheet_state/character_sheet_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CharacterSheet extends ConsumerWidget {
  final int sheetId;
  const CharacterSheet({super.key, required this.sheetId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final characterState = ref.watch(characterSheetStateProvider);
    final characterData = characterState.when(
      data: (characterData) {
        return Text('Character Name: ${characterData.characterName}');
      },
      loading: () => CircularProgressIndicator(),
      error: (err, stack) => Text('Error: $err'),
    );

    return Scaffold(body: Center(child: Text('$characterData')));
  }
}
