import 'package:dnd_helper_flutter/app/character_sheet/character_sheet_state/character_sheet_state.dart';
import 'package:dnd_helper_flutter/app/character_sheet/widgets/attributes_tab_bar.dart';
import 'package:dnd_helper_flutter/app/character_sheet/widgets/attributes_tab_bar_view.dart';
import 'package:dnd_helper_flutter/models/character_data/character_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SheetHeader extends ConsumerWidget {
  const SheetHeader({
    super.key,
    required this.characterData,
  });

  final CharacterData characterData;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.read(characterSheetStateProvider);
    return DefaultTabController(
      length: 6,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  GoRouter.of(context).go('/characters');
                },
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              Image.asset(
                'assets/icons/rest.png',
              ),
              Column(
                children: [
                  Text(
                    characterData.characterName,
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                  Text(
                    "${characterData.characterRace!.name} - ${characterData.characterClass!.name}",
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ],
              ),
              state.when(
                data: (data) {
                  final isInspiration = data.characterData.inspiration;
                  return GestureDetector(
                    onTap: ref
                        .read(characterSheetStateProvider.notifier)
                        .toggleInspiration,
                    child: isInspiration
                        ? const Image(
                            image: AssetImage(
                                'assets/icons/star_in_checkbox_96.png'),
                            width: 48,
                            height: 48,
                          )
                        : const Image(
                            image: AssetImage('assets/icons/checkbox_96.png'),
                            width: 48,
                            height: 48,
                          ),
                  );
                },
                loading: () => const CircularProgressIndicator(),
                error: (error, stackTrace) => Text('Error: $error'),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings_rounded,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          const AttributesTabBar(),
          const AttributesTabBarView()
        ],
      ),
    );
  }
}
