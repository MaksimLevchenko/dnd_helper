import 'package:dnd_helper_flutter/app/character_sheet/character_sheet_state/character_sheet_state.dart';
import 'package:dnd_helper_flutter/app/character_sheet/widgets/sheet_header.dart';
import 'package:dnd_helper_flutter/app/character_sheet/widgets/sheet_tab_bar.dart';
import 'package:dnd_helper_flutter/domain/build_context_extension.dart';
import 'package:dnd_helper_flutter/ui/basic_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CharacterSheet extends ConsumerWidget {
  final int sheetId;
  const CharacterSheet({super.key, required this.sheetId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenSize = MediaQuery.of(context).size;

    final characterState = ref.watch(characterSheetStateProvider);
    return characterState.when(
      data: (characterState) {
        return Scaffold(
          appBar: SheetHeader(characterData: characterState.characterData),
          body: Center(
            child: SizedBox(
              width: context.isMobile
                  ? screenSize
                      .width // Если мобильное устройство, используем всю ширину экрана
                  : screenSize.width > 1000
                      ? 1000 // Если ширина больше 1000, устанавливаем фиксированную ширину 700
                      : screenSize.width *
                          0.8, // В других случаях используем 80% ширины экрана
              child: SheetTabBar(
                onTapBarTap:
                    ref.read(characterSheetStateProvider.notifier).onTabBarTap,
                selectedIndex: characterState.tabBarIndex,
              ),
            ),
          ),
        );
      },
      loading: () => const CircularProgressIndicator(),
      error: (err, stack) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Произошла ошибка'),
            Button(
              onPressed: () => ref.refresh(characterSheetStateProvider),
              text: 'Повторить',
            ),
          ],
        ),
      ),
    );
  }
}
