import 'package:dnd_helper_flutter/app/creation/creation_background/state/background_tile.dart';
import 'package:dnd_helper_flutter/app/creation/creation_background/state/creation_background_state.dart';
import 'package:dnd_helper_flutter/app/creation/creation_race_page/race_tile.dart';
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
        data: (data) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Gap(16),
                Expanded(
                  child: ListView.builder(
                      itemCount: data.backgrounds.length,
                      itemBuilder: (context, index) {
                        final background = data.backgrounds[index];
                        return BackgroundTile(background: background);
                      }),
                ),
                if (data.selectedBackground != null)
                  Text(data.selectedBackgroundName!),
                const Gap(16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const ToBackPageButton(),
                    const Gap(10),
                    Button(
                      onPressed: () {
                        context.push('/creation_summary');
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
          const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
