import 'package:dnd_helper_flutter/app/character_sheet/character_sheet_state/character_sheet_state.dart';
import 'package:dnd_helper_flutter/app/character_sheet/widgets/sheet_header.dart';
import 'package:dnd_helper_flutter/app/character_sheet/widgets/sheet_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CharacterSheet extends ConsumerWidget {
  final int sheetId;
  const CharacterSheet({super.key, required this.sheetId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenSize = MediaQuery.of(context).size;

    final characterState = ref.watch(characterSheetStateProvider);
    final characterData = characterState.when(
      data: (characterData) {
        return Text('Character Name: $characterData');
      },
      loading: () => const CircularProgressIndicator(),
      error: (err, stack) => Text('Error: $err'),
    );
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, constrains) {
        return Scaffold(
            body: Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              const SheetHeader(),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: screenSize.width < 600
                    ? screenSize
                        .width // Если ширина экрана меньше 600, используем текущую ширину экрана
                    : screenSize.width > 1000
                        ? 1000 // Если ширина больше 1000, устанавливаем фиксированную ширину 700
                        : screenSize.width *
                            0.8, // В других случаях используем 80% ширины экрана
                child: const SheetTabBar(),
              ),
            ],
          ),
        ));
      });
    });
  }
}
