import 'package:dnd_helper_flutter/app/character_sheet/character_sheet_state/character_sheet_state.dart';
import 'package:dnd_helper_flutter/app/character_sheet/widgets/attributes_tab_bar_vew/item.dart';
import 'package:dnd_helper_flutter/app/character_sheet/widgets/widgets_state/widgets_state.dart';
import 'package:dnd_helper_flutter/models/enums/attributes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AttributesTabBarViewItem extends ConsumerWidget {
  const AttributesTabBarViewItem(
      {required this.attribute, required this.characterId, super.key});
  final Attributes attribute;
  final String characterId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(characterSheetStateProvider(characterId));
    return state.when(
      data: (data) {
        final proficiencyBonus = data.characterData.proficiencyBonus;
        final savingThrows = data.characterData.savingThrows;
        final isAttributeInSavingThrows = savingThrows?.contains(attribute);
        final modifier = data.characterData.getModifier(attribute);
        final listSkills =
            data.characterData.getSkillsByAttribute(attribute).toList();
        // final widgetsState = ref.watch(widgetsStateProvider(characterId));
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SelectableText(
                  ref
                      .read(characterSheetStateProvider(characterId).notifier)
                      .getAttribyteAsStringRu(attribute),
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(width: 10),
                // IconButton(
                //     onPressed: () {
                //       ref.read(widgetsStateProvider.notifier).toggleEditMode();
                //     },
                //     icon: Icon(Icons.mode_edit_rounded,
                //         color: widgetsState.editMode
                //             ? Theme.of(context).colorScheme.tertiary
                //             : Theme.of(context).colorScheme.outline))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Item.simple(
                    value: isAttributeInSavingThrows!
                        ? '+${(modifier + proficiencyBonus).toString()}'
                        : modifier.toString(),
                    label: 'СПАСБРОСОК'),
                Item.simple(value: modifier.toString(), label: 'ПРОВЕРКА'),
                Item.simple(
                    value: data.characterData.attributes[attribute]!.toString(),
                    label: 'ЗНАЧЕНИЕ')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (var skill in listSkills)
                  Item.flexible(
                    value: data.characterData.skillsExpertise!.contains(skill)
                        ? '+${modifier + proficiencyBonus * 2}'
                        : data.characterData.skillsProficiency!.contains(skill)
                            ? '+${modifier + proficiencyBonus}'
                            : '+$modifier',
                    label: ref
                        .read(characterSheetStateProvider(characterId).notifier)
                        .getSkillAsStringRu(skill),
                  )
              ],
            ),
            IconButton(
              onPressed: () {
                ref
                    .read(widgetsStateProvider(characterId).notifier)
                    .collapseTapBar();
              },
              icon: const Icon(Icons.keyboard_arrow_up_rounded),
            ),
          ],
        );
      },
      loading: () => const CircularProgressIndicator(),
      error: (error, stack) => Text('Error: $error'),
    );
  }
}
