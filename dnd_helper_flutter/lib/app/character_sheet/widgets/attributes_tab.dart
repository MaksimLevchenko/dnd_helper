import 'package:dnd_helper_flutter/app/character_sheet/character_sheet_state/character_sheet_state.dart';
import 'package:dnd_helper_flutter/app/character_sheet/widgets/widgets_state/widgets_state.dart';
import 'package:dnd_helper_flutter/models/enums/attributes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AttributesTab extends ConsumerWidget {
  const AttributesTab({
    required this.index,
    super.key,
  });
  final int index;
  static const List<String> labels = [
    'STR',
    'DEX',
    'CON',
    'INT',
    'WIS',
    'CHA',
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(widgetsStateProvider);
    final character = ref.watch(characterSheetStateProvider.notifier);
    final isFocused =
        index == state.selectedAttribute && state.isTabBarViewVisible;
    final Map<Attributes, int> attributesMap = character.getAttributes();
    final attributes = Attributes.values.toList();
    return Tab(
      child: Container(
        width: isFocused ? 45 : null,
        decoration: isFocused
            ? BoxDecoration(
                border: Border(
                  top: BorderSide(
                      color: Theme.of(context).colorScheme.primary, width: 2),
                  left: BorderSide(
                      color: Theme.of(context).colorScheme.primary, width: 2),
                  right: BorderSide(
                      color: Theme.of(context).colorScheme.primary, width: 2),
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(6),
                  topRight: Radius.circular(6),
                ),
              )
            : null,
        child: Column(
          children: [
            Text(
              labels[index],
              style: TextStyle(
                  color: isFocused
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.onSurface),
            ),
            Text(
              attributesMap[attributes[index]].toString(),
              style: TextStyle(
                color: isFocused
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.onSurface,
              ),
            )
          ],
        ),
      ),
    );
  }
}
