import 'package:dnd_helper_flutter/app/character_sheet/character_sheet_state/character_sheet_state.dart';
import 'package:dnd_helper_flutter/app/character_sheet/widgets/attributes_tab_bar_vew/item_skill.dart';
import 'package:dnd_helper_flutter/app/character_sheet/widgets/widgets_state/widgets_state.dart';
import 'package:dnd_helper_flutter/models/enums/attributes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AttributesTabBarViewItem extends ConsumerWidget {
  const AttributesTabBarViewItem({required this.attribute, super.key});
  final Attributes attribute;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(characterSheetStateProvider);
    return state.when(
      data: (data) {
        final proficiencyBonus = data.characterData.proficiencyBonus;
        final savingThrows = data.characterData.savingThrows;
        final isAttributeInSavingThrows = savingThrows.contains(attribute);
        final modifier = data.characterData.getModifier(attribute);
        final listSkills =
            data.characterData.getSkillsByAttribute(attribute).toList();
        return Column(
          children: [
            SelectableText(
              attribute.toString().split('.').last,
              style: TextStyle(fontSize: 20),
            ),
            SelectableText(
              isAttributeInSavingThrows
                  ? 'Saving throw: +${modifier + proficiencyBonus} '
                  : 'Saving throw: +$modifier',
              style: TextStyle(
                  fontSize: 16, color: Theme.of(context).colorScheme.onSurface),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (var skill in listSkills)
                  ItemSkill(attribute: attribute, skill: skill),
              ],
            ),
            IconButton(
              onPressed: () {
                ref.read(widgetsStateProvider.notifier).collapseTapBar();
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
