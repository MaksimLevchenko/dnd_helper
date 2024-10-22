import 'package:dnd_helper_flutter/app/character_sheet/widgets/attributes_tab_bar_vew/attributes_tab_bar_view_item.dart';
import 'package:dnd_helper_flutter/app/character_sheet/widgets/widgets_state/widgets_state.dart';
import 'package:dnd_helper_flutter/models/enums/attributes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AttributesTabBarView extends ConsumerWidget {
  const AttributesTabBarView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final widgetsState = ref.watch(widgetsStateProvider);

    return Container(
      height: widgetsState.isTabBarViewVisible ? 125 : 0,
      color: Theme.of(context).colorScheme.surface,
      child: const TabBarView(
        children: [
          AttributesTabBarViewItem(attribute: Attributes.strength),
          AttributesTabBarViewItem(attribute: Attributes.dexterity),
          AttributesTabBarViewItem(attribute: Attributes.constitution),
          AttributesTabBarViewItem(attribute: Attributes.intelligence),
          AttributesTabBarViewItem(attribute: Attributes.wisdom),
          AttributesTabBarViewItem(attribute: Attributes.charisma),
        ],
      ),
    );
  }
}
