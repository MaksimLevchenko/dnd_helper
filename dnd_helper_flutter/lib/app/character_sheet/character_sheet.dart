import 'package:dnd_helper_flutter/app/character_sheet/character_sheet_state/character_sheet_state.dart';
import 'package:dnd_helper_flutter/app/character_sheet/widgets/desktop/sheet_tab_bar_view.dart';
import 'package:dnd_helper_flutter/app/character_sheet/widgets/sheet_header.dart';
import 'package:dnd_helper_flutter/domain/build_context_extension.dart';
import 'package:dnd_helper_flutter/models/character_data/character_data.dart';
import 'package:dnd_helper_flutter/ui/basic_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CharacterSheet extends ConsumerWidget {
  final String characterId;
  const CharacterSheet({super.key, required this.characterId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final characterState = ref.watch(characterSheetStateProvider(characterId));
    return characterState.when(
      data: (characterState) {
        final widgetsState = ref.watch(
            characterSheetStateProvider(characterState.characterData.id!));
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
                                  character: characterState.characterData),
                              context.isMobile
                                  ? ref
                                      .read(characterSheetStateProvider(
                                              characterState.characterData.id!)
                                          .notifier)
                                      .getPage(widgetsState.value!.selectedPage)
                                  : SheetTabBarView(
                                      character: (characterState.characterData),
                                    ),
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
                                  .read(characterSheetStateProvider(
                                          characterState.characterData.id!)
                                      .notifier)
                                  .onTabBarTap(index);
                            },
                            currentIndex: widgetsState.value!.selectedPage,
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
      error: (err, stack) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Произошла ошибка'),
              Text('$err'),
              Text('$stack'),
              Button(
                onPressed: () =>
                    ref.refresh(characterSheetStateProvider(characterId)),
                text: 'Повторить',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
