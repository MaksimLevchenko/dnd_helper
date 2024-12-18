import 'package:dnd_helper_flutter/app/character_sheet/widgets/attributes_tab_bar_vew/attributes_tab_bar_view_item.dart';
import 'package:dnd_helper_flutter/app/character_sheet/widgets/widgets_state/widgets_state.dart';
import 'package:dnd_helper_flutter/models/enums/attributes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AttributesTabBarView extends ConsumerWidget {
  const AttributesTabBarView({super.key, required this.characterId});
  final String characterId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final widgetsState = ref.watch(widgetsStateProvider(characterId));

    return Container(
      height: widgetsState.isTabBarViewVisible ? 160 : 0,
      color: Theme.of(context).colorScheme.surface,
      child: TabBarView(
        children: [
          AttributesTabBarViewItem(
              characterId: characterId, attribute: Attributes.strength),
          AttributesTabBarViewItem(
              characterId: characterId, attribute: Attributes.dexterity),
          AttributesTabBarViewItem(
              characterId: characterId, attribute: Attributes.constitution),
          AttributesTabBarViewItem(
              characterId: characterId, attribute: Attributes.intelligence),
          AttributesTabBarViewItem(
              characterId: characterId, attribute: Attributes.wisdom),
          AttributesTabBarViewItem(
              characterId: characterId, attribute: Attributes.charisma),
        ],
      ),
    );
  }
}
