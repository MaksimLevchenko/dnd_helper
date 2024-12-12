import 'package:dnd_helper_flutter/app/creation/creation_race_page/creation_race_state/creation_race_state.dart';
import 'package:dnd_helper_flutter/models/race_data/race_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RaceTile extends ConsumerWidget {
  const RaceTile({super.key, required this.race});
  final RaceData race;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () =>
            ref.read(creationRaceStateProvider.notifier).onSelectRaceTap(race),
        child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              border:
                  Border.all(color: Theme.of(context).colorScheme.secondary),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(race.name)),
      ),
    );
  }
}
