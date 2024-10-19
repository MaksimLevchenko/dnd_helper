import 'package:dnd_helper_flutter/app/character_sheet/character_sheet_state/character_sheet_state.dart';
import 'package:dnd_helper_flutter/app/character_sheet/pages/abilities.dart';
import 'package:dnd_helper_flutter/app/character_sheet/pages/fight.dart';
import 'package:dnd_helper_flutter/app/character_sheet/pages/inventory.dart';
import 'package:dnd_helper_flutter/app/character_sheet/pages/personality.dart';
import 'package:dnd_helper_flutter/app/character_sheet/pages/spells.dart';
import 'package:dnd_helper_flutter/app/character_sheet/widgets/attributes_tab_bar_view.dart';
import 'package:dnd_helper_flutter/app/character_sheet/widgets/sheet_header.dart';
import 'package:dnd_helper_flutter/app/character_sheet/widgets/widgets_state/widgets_state.dart';
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
    final widgetsState = ref.watch(widgetsStateProvider);
    return characterState.when(
      data: (characterState) {
        return LayoutBuilder(
          builder: (context, constraints) {
            return OrientationBuilder(
              builder: (context, constrains) {
                return DefaultTabController(
                  length: 5,
                  initialIndex: 0,
                  child: Scaffold(
                    appBar: AppBar(
                      title: SheetHeader(
                          characterData: characterState.characterData),
                      centerTitle: true,
                      toolbarHeight: 300,
                      bottom: context.isMobile
                          ? null
                          : TabBar(
                              onTap: (index) {
                                ref
                                    .read(widgetsStateProvider.notifier)
                                    .onTabBarTap(index);
                              },
                              tabAlignment: TabAlignment.center,
                              tabs: const <Tab>[
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
                    ),
                    body: context.isMobile
                        ? ref
                            .read(widgetsStateProvider.notifier)
                            .getPage(widgetsState.selectedPage)
                        : const Expanded(
                            child: TabBarView(
                              children: <Widget>[
                                Fight(),
                                Abilities(),
                                Inventory(),
                                Personality(),
                                Spells(),
                              ],
                            ),
                          ),
                    bottomNavigationBar: context.isMobile
                        ? BottomNavigationBar(
                            useLegacyColorScheme: false,
                            onTap: (index) {
                              ref
                                  .read(widgetsStateProvider.notifier)
                                  .onTabBarTap(index);
                            },
                            currentIndex: widgetsState.selectedPage,
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
                          )
                        : null,
                  ),
                );
              },
            );
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
