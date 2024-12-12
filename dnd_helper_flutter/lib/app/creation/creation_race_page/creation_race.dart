import 'dart:developer';

import 'package:dnd_helper_flutter/app/creation/creation_race_page/race_tile.dart';
import 'package:dnd_helper_flutter/app/creation/creation_state/creation_state.dart';
import 'package:dnd_helper_flutter/ui/basic_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dnd_helper_flutter/app/creation/creation_race_page/creation_race_state/creation_race_state.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class CreationRace extends ConsumerWidget {
  const CreationRace({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(creationRaceStateProvider);
    return Scaffold(
      body: state.when(
          error: (error, stackTrace) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Произошла ошибка'),
                  Button(
                    onPressed: () => ref.refresh(creationRaceStateProvider),
                    child: const Text('Повторить'),
                  ),
                ],
              ),
            );
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          data: (state) {
            final races = state.races;
            return Column(
              children: [
                const Gap(16),
                Expanded(
                  child: ListView.builder(
                      itemCount: races.length,
                      itemBuilder: (context, index) {
                        final race = races[index];
                        return RaceTile(
                          race: race,
                        );
                      }),
                ),
                if (state.selectedRaceData != null)
                  Text(state.selectedRaceData!.name),
                const Gap(16),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const ToBackPageButton(),
                  const Gap(10),
                  Visibility(
                    visible: state.selectedRaceData != null,
                    child: Button(
                      text: 'Next page',
                      onPressed: () {
                        ref
                            .read(creationStateProvider.notifier)
                            .setRace(state.selectedRaceData!);
                        log(state.selectedRaceData.toString());
                        context.push('/creation_attributes');
                      },
                    ),
                  )
                ]),
                const Gap(16),
              ],
            );
          }),
    );
  }
}
