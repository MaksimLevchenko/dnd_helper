import 'package:dnd_helper_flutter/app/character_sheet/character_sheet_state/character_sheet_state.dart';
import 'package:dnd_helper_flutter/app/character_sheet/widgets/attributes_tab.dart';
import 'package:dnd_helper_flutter/app/character_sheet/widgets/widgets_state/widgets_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AttributesTabBar extends ConsumerWidget {
  const AttributesTabBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
          dividerColor: Theme.of(context).colorScheme.primary,
          tabs: const <Widget>[
            AttributesTab(
              index: 0,
            ),
            AttributesTab(
              index: 1,
            ),
            AttributesTab(
              index: 2,
            ),
            AttributesTab(
              index: 3,
            ),
            AttributesTab(
              index: 4,
            ),
            AttributesTab(
              index: 5,
            ),
          ],
        ),
      ],
    );
  }
}
