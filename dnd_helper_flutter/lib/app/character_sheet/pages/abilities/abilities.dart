import 'package:dnd_helper_flutter/app/character_sheet/pages/abilities/level.dart';
import 'package:dnd_helper_flutter/app/character_sheet/widgets/widgets_state/widgets_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Abilities extends ConsumerWidget {
  const Abilities({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      alignment: Alignment.topCenter,
      height: ref.watch(widgetsStateProvider).isTabBarViewVisible
          ? MediaQuery.of(context).size.height - 321
          : MediaQuery.of(context).size.height - 159,
      color: Theme.of(context).colorScheme.secondary,
      child: const Padding(
        padding: EdgeInsets.all(12),
        child: Level(),
      ),
    );
  }
}