import 'package:dnd_helper_flutter/app/character_sheet/character_sheet_state/character_sheet_state.dart';
import 'package:dnd_helper_flutter/app/character_sheet/widgets/desktop/sheet_tab_bar_view.dart';
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
                    body: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: context.isMobile
                            ? constraints.maxWidth
                            : constraints.maxWidth * 0.6,
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surface,
                          border: context.isMobile
                              ? null
                              : Border.symmetric(
                                  horizontal: BorderSide.none,
                                  vertical: BorderSide(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: context.isMobile ? 0 : 8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SheetHeader(
                                  characterData: characterState.characterData),
                              context.isMobile
                                  ? ref
                                      .read(widgetsStateProvider.notifier)
                                      .getPage(widgetsState.selectedPage)
                                  : const SheetTabBarView(),
                            ],
                          ),
                        ),
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
