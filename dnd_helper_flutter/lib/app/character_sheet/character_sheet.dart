import 'package:dnd_helper_flutter/app/character_sheet/character_sheet_state/character_sheet_state.dart';
import 'package:dnd_helper_flutter/app/character_sheet/pages/abilities.dart';
import 'package:dnd_helper_flutter/app/character_sheet/pages/fight.dart';
import 'package:dnd_helper_flutter/app/character_sheet/pages/inventory.dart';
import 'package:dnd_helper_flutter/app/character_sheet/pages/personality.dart';
import 'package:dnd_helper_flutter/app/character_sheet/pages/spells.dart';
import 'package:dnd_helper_flutter/app/character_sheet/widgets/sheet_header.dart';
import 'package:dnd_helper_flutter/domain/build_context_extension.dart';
import 'package:dnd_helper_flutter/ui/basic_widgets.dart';
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
            if (context.isMobile) {
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
                            label: 'бой'),
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
              return DefaultTabController(
                length: 5,
                initialIndex: characterState.selectedIndex,
                child: Scaffold(
                  appBar: AppBar(
                    title: SheetHeader(
                        characterData: characterState.characterData),
                    bottom: TabBar(
                      onTap: (index) {
                        ref
                            .read(characterSheetStateProvider.notifier)
                            .onTabBarTap(index);
                      },
                      tabAlignment: TabAlignment.center,
                      tabs: const [
                        Tab(
                          text: 'Бой',
                        ),
                        Tab(
                          text: 'Умения',
                        ),
                        Tab(
                          text: 'Инвентарь',
                        ),
                        Tab(
                          text: 'Личность',
                        ),
                        Tab(
                          text: 'Заклинания',
                        ),
                      ],
                    ),
                    centerTitle: true,
                  ),
                  body: const TabBarView(
                    children: <Widget>[
                      Fight(),
                      Abilities(),
                      Inventory(),
                      Personality(),
                      Spells(),
                    ],
                  ),
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
