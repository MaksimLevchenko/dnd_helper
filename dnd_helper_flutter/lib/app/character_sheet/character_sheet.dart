import 'package:dnd_helper_flutter/app/character_sheet/character_sheet_state/character_sheet_state.dart';
import 'package:dnd_helper_flutter/app/character_sheet/widgets/sheet_header.dart';
import 'package:dnd_helper_flutter/ui/basic_widgets.dart';
import 'package:dnd_helper_flutter/app/character_sheet/widgets/sheet_tab_bar/sheet_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CharacterSheet extends ConsumerWidget {
  final int sheetId;
  const CharacterSheet({super.key, required this.sheetId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final characterState = ref.watch(characterSheetStateProvider);
    return characterState.when(
      data: (characterState) {
        return LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              return OrientationBuilder(
                builder: (context, constrains) {
                  return Scaffold(
                    appBar: AppBar(
                      title: SheetHeader(
                          characterData: characterState.characterData),
                      centerTitle: true,
                    ),
                    body: ref
                        .read(characterSheetStateProvider.notifier)
                        .getPage(characterState.selectedIndex),
                    bottomNavigationBar: BottomNavigationBar(
                      useLegacyColorScheme: false,
                      onTap: (index) {
                        ref
                            .read(characterSheetStateProvider.notifier)
                            .onTabBarTap(index);
                      },
                      currentIndex: characterState.selectedIndex,
                      items: const <BottomNavigationBarItem>[
                        BottomNavigationBarItem(
                          icon: Icon(Icons.access_alarm_outlined),
                          label: 'бой',
                        ),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.access_alarm_outlined),
                            label: 'способности'),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.access_alarm_outlined),
                            label: 'инвентарь'),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.access_alarm_outlined),
                            label: 'личность'),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.access_alarm_outlined),
                            label: 'заклинания'),
                      ],
                    ),
                  );
                },
              );
            } else {
              return Scaffold(
                appBar: AppBar(
                  title:
                      SheetHeader(characterData: characterState.characterData),
                  centerTitle: true,
                ),
                body: Column(
                  children: [
                    SheetTabBar(
                      selectedIndex: characterState.selectedIndex,
                      onTapBarTap: (index) {
                        ref
                            .read(characterSheetStateProvider.notifier)
                            .onTabBarTap(index);
                      },
                    ),
                    Expanded(
                      child: IndexedStack(
                        index: characterState.selectedIndex,
                        children: const [
                          Text('Содержимое Вкладки 1'),
                          Text('Содержимое Вкладки 2'),
                          Text('Содержимое Вкладки 3'),
                          Text('Содержимое Вкладки 4'),
                          Text('Содержимое Вкладки 5'),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }
          },
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
