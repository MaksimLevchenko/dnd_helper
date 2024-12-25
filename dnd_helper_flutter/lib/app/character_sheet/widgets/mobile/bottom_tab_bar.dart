import 'package:dnd_helper_flutter/app/character_sheet/character_sheet_state/character_sheet_state.dart';
import 'package:dnd_helper_flutter/app/character_sheet/widgets/tab_view_state/tab_state.dart';
import 'package:dnd_helper_flutter/models/character_data/character_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BottomTabBar extends ConsumerWidget {
  const BottomTabBar({super.key, required this.character});
  final CharacterData character;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BottomNavigationBar(
      useLegacyColorScheme: false,
      onTap: (index) {
        ref.read(tabViewStateProvider.notifier).onTabBarTap(index);
      },
      currentIndex: ref.watch(tabViewStateProvider),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.shield), label: 'бой'),
        BottomNavigationBarItem(
            icon: Icon(Icons.flash_on), label: 'Происхождение'),
        // BottomNavigationBarItem(
        //     icon: Icon(Icons.inventory_2_outlined), label: 'инвентарь'),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_outline), label: 'личность'),
        // BottomNavigationBarItem(
        //     icon: Icon(Icons.book_outlined), label: 'заклинания'),
      ],
    );
  }
}
