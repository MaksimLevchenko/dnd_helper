import 'package:dnd_helper_flutter/app/character_sheet/character_sheet_state/character_sheet_state.dart';
import 'package:dnd_helper_flutter/app/character_sheet/widgets/attributes_tab_bar_vew/attributes_tab.dart';
import 'package:dnd_helper_flutter/models/character_data/character_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AttributesTabBar extends ConsumerWidget {
  const AttributesTabBar({super.key, required this.character});
  final CharacterData character;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        TabBar(
          onTap: (index) {
            ref
                .read(characterSheetStateProvider(character.id!).notifier)
                .setSelectedAttribute(index);
          },
          indicator: const BoxDecoration(
            color: Colors.transparent,
          ),
          dividerHeight: 2,
          dividerColor: Theme.of(context).colorScheme.primary,
          tabs: <Widget>[
            AttributesTab(character: character, index: 0),
            AttributesTab(character: character, index: 1),
            AttributesTab(character: character, index: 2),
            AttributesTab(character: character, index: 3),
            AttributesTab(character: character, index: 4),
            AttributesTab(character: character, index: 5),
          ],
        ),
      ],
    );
  }
}
