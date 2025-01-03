import 'package:dnd_helper_flutter/app/character_sheet/character_sheet_state/character_sheet_state.dart';
import 'package:dnd_helper_flutter/app/character_sheet/widgets/tab_view_state/tab_state.dart';
import 'package:dnd_helper_flutter/models/character_data/character_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SheetTabBarView extends ConsumerWidget {
  const SheetTabBarView({super.key, required this.character});
  final CharacterData character;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            onTap: (index) {
              ref.read(tabViewStateProvider.notifier).onTabBarTap(index);
            },
            tabs: const <Tab>[
              Tab(
                text: 'Бой',
              ),
              Tab(
                text: 'Происхождение',
              ),
              // Tab(
              //   text: 'Инвентарь',
              // ),
              Tab(
                text: 'Личность',
              ),
              // Tab(
              //   text: 'Заклинания',
              // ),
            ],
          ),
          Expanded(
            child: ref
                .read(tabViewStateProvider.notifier)
                .getPage(ref.watch(tabViewStateProvider), character),
          )
        ],
      ),
    );
  }
}
