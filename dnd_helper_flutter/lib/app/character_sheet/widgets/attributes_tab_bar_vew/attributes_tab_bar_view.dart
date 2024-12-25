import 'package:dnd_helper_flutter/app/character_sheet/character_sheet_state/character_sheet_state.dart';
import 'package:dnd_helper_flutter/app/character_sheet/widgets/attributes_tab_bar_vew/attributes_tab_bar_view_item.dart';
import 'package:dnd_helper_flutter/models/character_data/character_data.dart';
import 'package:dnd_helper_flutter/models/enums/attributes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AttributesTabBarView extends ConsumerWidget {
  const AttributesTabBarView({super.key, required this.character});
  final CharacterData character;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final widgetsState = ref.watch(characterSheetStateProvider(character.id!));

    return Container(
      height: widgetsState.value!.isTabBarViewVisible ? 140 : 0,
      color: Theme.of(context).colorScheme.surface,
      child: TabBarView(
        children: [
          AttributesTabBarViewItem(
              character: character, attribute: Attributes.strength),
          AttributesTabBarViewItem(
              character: character, attribute: Attributes.dexterity),
          AttributesTabBarViewItem(
              character: character, attribute: Attributes.constitution),
          AttributesTabBarViewItem(
              character: character, attribute: Attributes.intelligence),
          AttributesTabBarViewItem(
              character: character, attribute: Attributes.wisdom),
          AttributesTabBarViewItem(
              character: character, attribute: Attributes.charisma),
        ],
      ),
    );
  }
}
