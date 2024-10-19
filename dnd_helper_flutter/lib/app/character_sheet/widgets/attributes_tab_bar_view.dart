import 'package:dnd_helper_flutter/app/character_sheet/widgets/widgets_state/widgets_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AttributesTabBarView extends ConsumerWidget {
  const AttributesTabBarView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final widgetsState = ref.watch(widgetsStateProvider);
    final notifier = ref.read(widgetsStateProvider.notifier);

    return Visibility(
      visible: widgetsState.isTabBarViewVisible,
      child: Column(
        children: [
          Container(
            height: 50,
            color: Theme.of(context).colorScheme.surface,
            child: const TabBarView(
              children: [
                Center(child: Text('Strength')),
                Center(child: Text('Dexterity')),
                Center(child: Text('Constitution')),
                Center(child: Text('Intelligence')),
                Center(child: Text('Wisdom')),
                Center(child: Text('Charisma')),
              ],
            ),
          ),
          IconButton(
            onPressed: () {
              notifier.collapseTapBar();
            },
            icon: const Icon(Icons.keyboard_arrow_up_rounded),
          ),
        ],
      ),
    );
  }
}
