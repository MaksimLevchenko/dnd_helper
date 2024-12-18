import 'package:dnd_helper_flutter/app/character_sheet/widgets/widgets_state/widgets_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SheetTabBarView extends ConsumerWidget {
  const SheetTabBarView({super.key, required this.characterId});
  final String characterId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(widgetsStateProvider(characterId).notifier);
    return DefaultTabController(
      length: 5,
      child: Column(
        children: [
          TabBar(
            onTap: (index) {
              notifier.onTabBarTap(index);
            },
            tabs: const <Tab>[
              Tab(
                text: 'Бой',
              ),
              Tab(
                text: 'Способности',
              ),
              Tab(
                text: 'Инвентарь',
              ),
              Tab(
                text: 'Личность',
              ),
              Tab(
                text: 'Заклинания',
              ),
            ],
          ),
          notifier.getPage(
              ref.watch(widgetsStateProvider(characterId)).selectedPage)
        ],
      ),
    );
  }
}
