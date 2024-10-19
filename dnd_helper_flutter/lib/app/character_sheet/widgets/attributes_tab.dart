import 'package:dnd_helper_flutter/app/character_sheet/widgets/widgets_state/widgets_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AttributesTab extends ConsumerWidget {
  const AttributesTab(
      {required this.label,
      required this.index,
      required this.value,
      super.key,
      required this.selectedTabIndex});
  final int index;
  final int value;
  final int selectedTabIndex;
  final String label;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(widgetsStateProvider);

    return Tab(
      child: Container(
        width:
            index == selectedTabIndex && state.isTabBarViewVisible ? 45 : null,
        decoration: index == selectedTabIndex && state.isTabBarViewVisible
            ? BoxDecoration(
                border: Border(
                  top: BorderSide(
                      color: Theme.of(context).colorScheme.secondary, width: 2),
                  left: BorderSide(
                      color: Theme.of(context).colorScheme.secondary, width: 2),
                  right: BorderSide(
                      color: Theme.of(context).colorScheme.secondary, width: 2),
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(6),
                  topRight: Radius.circular(6),
                ),
              )
            : null,
        child: Column(
          children: [Text(label), Text(value.toString())],
        ),
      ),
    );
  }
}
