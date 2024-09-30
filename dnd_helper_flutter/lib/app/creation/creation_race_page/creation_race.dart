import 'package:dnd_helper_flutter/ui/basic_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dnd_helper_flutter/app/creation/creation_race_page/creation_race_state/creation_race_state.dart';

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
                ElevatedButton(
                  onPressed: () => ref.refresh(creationRaceStateProvider),
                  child: const Text('Повторить'),
                ),
              ],
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        data: (state) => Column(
          children: [
            const SingleChildScrollView(
                scrollDirection: Axis.horizontal, child: Text('CreationRace')),
            Row(children: [
              toBackPageButton(context),
              toNextPageButton(context, '/creation_attributes'),
            ]),
          ],
        ),
      ),
    );
  }
}
