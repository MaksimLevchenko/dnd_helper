import 'package:dnd_helper_flutter/domain/build_context_extension.dart';
import 'package:flutter/material.dart';

class SheetTabBar extends StatelessWidget {
  const SheetTabBar(
      {super.key, required this.selectedIndex, required this.onTapBarTap});

  final int selectedIndex;
  final void Function(int) onTapBarTap;

  @override
  Widget build(
    BuildContext context,
  ) {
    return DefaultTabController(
      length: 5,
      child: Column(
        children: [
          TabBar(
            isScrollable: !context.isMobile ? true : false,
            onTap: onTapBarTap,
            tabAlignment: TabAlignment.center,
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
            index: selectedIndex,
            children: const [
              Text('Содержимое Вкладки 2'),
              Text(
                  'Содержимое Вкладки 3\n\n\n\n\n\n\n\n\\n\n\n\n\n\n\n\n\n\nddddd'),
              Text('Содержимое Вкладки 4'),
              Text('Содержимое Вкладки 5'),
              Text('Содержимое Вкладки 6'),
            ],
          ),
        ],
      ),
    );
  }
}
