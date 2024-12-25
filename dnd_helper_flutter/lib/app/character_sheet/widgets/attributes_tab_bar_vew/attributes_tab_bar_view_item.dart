import 'package:dnd_helper_flutter/app/character_sheet/character_sheet_state/character_sheet_state.dart';
import 'package:dnd_helper_flutter/app/character_sheet/widgets/attributes_tab_bar_vew/item.dart';
import 'package:dnd_helper_flutter/models/character_data/character_data.dart';
import 'package:dnd_helper_flutter/models/enums/attributes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AttributesTabBarViewItem extends ConsumerWidget {
  const AttributesTabBarViewItem(
      {required this.attribute, required this.character, super.key});
  final Attributes attribute;
  final CharacterData character;

  String getSignedValue(int value) {
    return value > 0 ? '+$value' : '$value';
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(characterSheetStateProvider(character.id!));
    return state.when(
      data: (data) {
        final List<Attributes?>? savingThrows = data.characterData.savingThrows;
        final bool isAttributeInSavingThrows =
            savingThrows?.contains(attribute) ?? false;
        final int modifier = data.characterData.getModifier(attribute);
        final proficiency = data.characterData.proficiencyBonus;

        final modifierOnly = getSignedValue(modifier);

        final modifierPlusProficiency = getSignedValue(modifier + proficiency);

        final modifierPlusDoubleProficiency =
            getSignedValue(modifier + proficiency * 2);

        final listSkills =
            data.characterData.getSkillsByAttribute(attribute).toList();

        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SelectableText(
                  ref
                      .read(characterSheetStateProvider(character.id!).notifier)
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
                    value: isAttributeInSavingThrows
                        ? modifierOnly
                        : modifierPlusProficiency,
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
                    value:
                        data.characterData.skillsExpertise?.contains(skill) ??
                                false
                            ? modifierPlusDoubleProficiency
                            : data.characterData.skillsProficiency
                                        ?.contains(skill) ??
                                    false
                                ? modifierPlusProficiency
                                : modifierOnly,
                    label: ref
                        .read(
                            characterSheetStateProvider(character.id!).notifier)
                        .getSkillAsStringRu(skill),
                  )
              ],
            ),
            IconButton(
              onPressed: () {
                ref
                    .read(characterSheetStateProvider(character.id!).notifier)
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
