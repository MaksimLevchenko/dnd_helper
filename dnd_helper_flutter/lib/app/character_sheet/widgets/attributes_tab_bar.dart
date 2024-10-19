import 'package:dnd_helper_flutter/app/character_sheet/widgets/attributes_tab.dart';
import 'package:dnd_helper_flutter/app/character_sheet/widgets/widgets_state/widgets_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AttributesTabBar extends ConsumerWidget {
  const AttributesTabBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(widgetsStateProvider);
    return Column(
      children: [
        TabBar(
          tabAlignment: TabAlignment.center,
          onTap: (index) {
            ref.read(widgetsStateProvider.notifier).setSelectedAttribute(index);
          },
          indicator: const BoxDecoration(
            color: Colors.transparent,
          ),
          dividerHeight: 2,
          dividerColor: Theme.of(context).colorScheme.secondary,
          tabs: <Widget>[
            AttributesTab(
              selectedTabIndex: state.selectedAttribute,
              value: 20,
              index: 0,
              label: 'STR',
            ),
            AttributesTab(
              selectedTabIndex: state.selectedAttribute,
              value: 20,
              index: 1,
              label: 'DEX',
            ),
            AttributesTab(
              selectedTabIndex: state.selectedAttribute,
              value: 20,
              index: 2,
              label: 'CON',
            ),
            AttributesTab(
              selectedTabIndex: state.selectedAttribute,
              value: 20,
              index: 3,
              label: 'INT',
            ),
            AttributesTab(
              selectedTabIndex: state.selectedAttribute,
              value: 20,
              index: 4,
              label: 'WIS',
            ),
            AttributesTab(
              selectedTabIndex: state.selectedAttribute,
              value: 20,
              index: 5,
              label: 'CHA',
            ),
          ],
        ),
      ],
    );
  }
}
