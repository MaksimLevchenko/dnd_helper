import 'package:dnd_helper_flutter/app/character_sheet/character_sheet_state/character_sheet_state.dart';
import 'package:dnd_helper_flutter/app/character_sheet/widgets/attributes_tab_bar_vew/attributes_tab_bar.dart';
import 'package:dnd_helper_flutter/app/character_sheet/widgets/attributes_tab_bar_vew/attributes_tab_bar_view.dart';
import 'package:dnd_helper_flutter/models/character_data/character_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SheetHeader extends ConsumerWidget {
  const SheetHeader({
    super.key,
    required this.character,
  });

  final CharacterData character;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 6,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Theme.of(context).colorScheme.tertiary,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    GoRouter.of(context).go('/characters');
                  },
                  icon: const Icon(
                    Icons.arrow_back_rounded,
                    color: Colors.white,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      character.characterName!,
                      style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).colorScheme.onTertiary,
                      ),
                    ),
                    Text(
                      "${character.characterRace!.name} - ${character.characterClass!.name}",
                      style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).colorScheme.onTertiary,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 50,
                ),
                // IconButton(
                //   onPressed: () {},
                //   icon: const Icon(
                //     Icons.settings_rounded,
                //     color: Colors.white,
                //   ),
                // ),
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          AttributesTabBar(
            character: character,
          ),
          const SizedBox(
            height: 4,
          ),
          AttributesTabBarView(
            character: character,
          ),
        ],
      ),
    );
  }
}
