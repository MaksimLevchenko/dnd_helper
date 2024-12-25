import 'package:dnd_helper_flutter/app/character_sheet/character_sheet_state/character_sheet_state.dart';
import 'package:dnd_helper_flutter/app/character_sheet/widgets/desktop/sheet_tab_bar_view.dart';
import 'package:dnd_helper_flutter/app/character_sheet/widgets/mobile/bottom_tab_bar.dart';
import 'package:dnd_helper_flutter/app/character_sheet/widgets/sheet_header.dart';
import 'package:dnd_helper_flutter/app/character_sheet/widgets/tab_view_state/tab_state.dart';
import 'package:dnd_helper_flutter/domain/build_context_extension.dart';
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
      skipLoadingOnRefresh: true,
      skipLoadingOnReload: true,
      data: (characterState) {
        return LayoutBuilder(
          builder: (context, constraints) {
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
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: context.isMobile ? 0 : 8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SheetHeader(character: characterState.characterData),
                          context.isMobile
                              ? Expanded(
                                  child: ref
                                      .read(tabViewStateProvider.notifier)
                                      .getPage(ref.watch(tabViewStateProvider),
                                          characterState.characterData),
                                )
                              : Expanded(
                                  child: SheetTabBarView(
                                    character: (characterState.characterData),
                                  ),
                                ),
                        ],
                      ),
                    ),
                  ),
                ),
                bottomNavigationBar: context.isMobile
                    ? BottomTabBar(
                        character: characterState.characterData,
                      )
                    : null,
              ),
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
