import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dnd_helper_flutter/app/character_sheet/character_sheet_state/character_sheet_state.dart';

class SheetTabBar extends ConsumerWidget {
  const SheetTabBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(characterSheetStateProvider);
    final screenSize = MediaQuery.of(context).size;

    return state.when(
      error: (error, stackTrace) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Произошла ошибка'),
              ElevatedButton(
                onPressed: () => ref.refresh(characterSheetStateProvider),
                child: const Text('Повторить'),
              ),
            ],
          ),
        );
      },
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      data: (state) => DefaultTabController(
        length: 5,
        child: Column(
          children: [
            TabBar(
              isScrollable: screenSize.width < 600 ? true : false,
              onTap: (index) {
                ref
                    .read(characterSheetStateProvider.notifier)
                    .onTabBarTap(index);
              },
              tabs: const [
                Tab(
                  text: 'Бой',
                ),
                Tab(
                  text: 'Умения',
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
            IndexedStack(
              index: state.tabBarIndex,
              children: const [
                Text('Содержимое Вкладки 2'),
                Text(
                    'Содержимое Вкладки 3\n\n\n\n\n\n\n\n\\n\n\n\n\n\n\n\n\n\nddddd'),
                Text('Содержимое Вкладки 4'),
                Text('Содержимое Вкладки 5'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
