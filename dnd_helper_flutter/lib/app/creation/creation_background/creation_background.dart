import 'package:dnd_helper_flutter/app/creation/creation_background/state/background_tile.dart';
import 'package:dnd_helper_flutter/app/creation/creation_background/state/creation_background_state.dart';
import 'package:dnd_helper_flutter/app/creation/creation_race_page/race_tile.dart';
import 'package:dnd_helper_flutter/app/creation/creation_state/creation_state.dart';
import 'package:dnd_helper_flutter/ui/basic_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class CreationBackground extends ConsumerWidget {
  const CreationBackground({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(creationBackgroundStateProvider);
    return Scaffold(
      body: state.when(
        data: (state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Gap(16),
                Expanded(
                  child: ListView.builder(
                      itemCount: state.backgrounds.length,
                      itemBuilder: (context, index) {
                        final background = state.backgrounds[index];
                        return BackgroundTile(background: background);
                      }),
                ),
                if (state.selectedBackground != null)
                  Text(state.selectedBackgroundName!),
                const Gap(16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const ToBackPageButton(),
                    const Gap(10),
                    Button(
                      onPressed: () {
                        context.push('/creation_personal');
                        ref
                            .read(creationStateProvider.notifier)
                            .setBackground(state.selectedBackground!);
                      },
                      text: 'Next',
                    ),
                  ],
                ),
                const Gap(16)
              ],
            ),
          );
        },
        error: (e, stack) {
          return Text(
            '${e.toString()}, ${stack.toString()}',
          );
        },
        loading: () {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
