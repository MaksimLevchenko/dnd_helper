import 'package:dnd_helper_flutter/app/character_sheet/widgets/attributes_tab_bar_vew/attributes_tab.dart';
import 'package:dnd_helper_flutter/app/character_sheet/widgets/widgets_state/widgets_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AttributesTabBar extends ConsumerWidget {
  const AttributesTabBar({super.key, required this.characterId});
  final String characterId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        TabBar(
          onTap: (index) {
            ref
                .read(widgetsStateProvider(characterId).notifier)
                .setSelectedAttribute(index);
          },
          indicator: const BoxDecoration(
            color: Colors.transparent,
          ),
          dividerHeight: 2,
          dividerColor: Theme.of(context).colorScheme.primary,
          tabs: <Widget>[
            AttributesTab(characterId: characterId, index: 0),
            AttributesTab(characterId: characterId, index: 1),
            AttributesTab(characterId: characterId, index: 2),
            AttributesTab(characterId: characterId, index: 3),
            AttributesTab(characterId: characterId, index: 4),
            AttributesTab(characterId: characterId, index: 5),
          ],
        ),
      ],
    );
  }
}
