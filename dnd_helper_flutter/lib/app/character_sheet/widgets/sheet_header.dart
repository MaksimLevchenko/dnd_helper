import 'package:dnd_helper_flutter/app/character_sheet/character_sheet_state/character_sheet_state.dart';
import 'package:dnd_helper_flutter/app/character_sheet/widgets/attributes_tab_bar_vew/attributes_tab_bar.dart';
import 'package:dnd_helper_flutter/app/character_sheet/widgets/attributes_tab_bar_vew/attributes_tab_bar_view.dart';
import 'package:dnd_helper_flutter/models/character_data/character_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SheetHeader extends ConsumerWidget {
  const SheetHeader({
    super.key,
    required this.characterData,
  });

  final CharacterData characterData;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.read(characterSheetStateProvider);

    return DefaultTabController(
      length: 6,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          state.when(
            data: (data) {
              return Container(
                color: Theme.of(context).colorScheme.tertiary,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        GoRouter.of(context).go('/characters');
                      },
                      icon: const Icon(
                        Icons.arrow_back_rounded,
                        color: Colors.white,
                      ),
                    ),

                    Column(
                      children: [
                        Text(
                          data.characterData.characterName,
                          style: TextStyle(
                            fontSize: 16,
                            color: Theme.of(context).colorScheme.onTertiary,
                          ),
                        ),
                        Text(
                          "${data.characterData.characterRace!.name} - ${data.characterData.characterClass!.name}",
                          style: TextStyle(
                            fontSize: 16,
                            color: Theme.of(context).colorScheme.onTertiary,
                          ),
                        ),
                      ],
                    ),
                    // GestureDetector(
                    //   onTap: ref
                    //       .read(characterSheetStateProvider.notifier)
                    //       .toggleInspiration,
                    //   child: data.characterData.inspiration
                    //       ? const Image(
                    //           image: AssetImage(
                    //               'assets/icons/star_in_checkbox_96.png'),
                    //           width: 32,
                    //           height: 32,
                    //         )
                    //       : const Image(
                    //           image: AssetImage('assets/icons/checkbox_96.png'),
                    //           width: 32,
                    //           height: 32,
                    //         ),
                    // ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.settings_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              );
            },
            loading: () => const CircularProgressIndicator(),
            error: (error, stackTrace) => Text('Error: $error'),
          ),
          const SizedBox(
            height: 8,
          ),
          const AttributesTabBar(),
          const SizedBox(
            height: 4,
          ),
          const AttributesTabBarView()
        ],
      ),
    );
  }
}
