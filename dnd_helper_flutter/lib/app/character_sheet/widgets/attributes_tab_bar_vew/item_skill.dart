import 'package:dnd_helper_flutter/app/character_sheet/character_sheet_state/character_sheet_state.dart';
import 'package:dnd_helper_flutter/models/enums/attributes.dart';
import 'package:dnd_helper_flutter/models/enums/skills.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ItemSkill extends ConsumerWidget {
  const ItemSkill({required this.attribute, required this.skill, super.key});
  final Skills skill;
  final Attributes attribute;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(characterSheetStateProvider);
    return state.when(
      data: (data) {
        final modifier = data.characterData.getModifier(attribute);
        final proficiencyBonus = data.characterData.proficiencyBonus;
        final Color primary = Theme.of(context).colorScheme.primary;
        final width = MediaQuery.of(context).size.width;
        return width < 550
            ? Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        border: Border.all(color: primary),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(4),
                        ),
                      ),
                      child: SelectableText(
                        skill.toString().split('.').last,
                        style: TextStyle(
                            fontSize: 11,
                            color: Theme.of(context).colorScheme.onSurface),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: primary),
                            left: BorderSide(color: primary),
                            right: BorderSide(color: primary)),
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(6),
                          bottomRight: Radius.circular(6),
                        ),
                      ),
                      child: SelectableText(
                        data.characterData.skillsExpertise.contains(skill)
                            ? '+${modifier + proficiencyBonus * 2}'
                            : data.characterData.skillsProficiency
                                    .contains(skill)
                                ? '+${modifier + proficiencyBonus}'
                                : '+$modifier',
                        style: TextStyle(
                            fontSize: 18,
                            color: Theme.of(context).colorScheme.onSurface),
                      ),
                    )
                  ],
                ),
              )
            : Padding(
                padding: const EdgeInsets.all(2),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: primary),
                            left: BorderSide(color: primary),
                            top: BorderSide(color: primary)),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: SelectableText(
                          skill.toString().split('.').last,
                          style: TextStyle(
                              fontSize: 11,
                              color: Theme.of(context).colorScheme.onSurface),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Theme.of(context).colorScheme.primary),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: SelectableText(
                        data.characterData.skillsExpertise.contains(skill)
                            ? '+${modifier + proficiencyBonus * 2}'
                            : data.characterData.skillsProficiency
                                    .contains(skill)
                                ? '+${modifier + proficiencyBonus}'
                                : '+$modifier',
                        style: TextStyle(
                            fontSize: 18,
                            color: Theme.of(context).colorScheme.onSurface),
                      ),
                    )
                  ],
                ),
              );
        // return Row(
        //   children: [
        // Container(
        //   decoration: BoxDecoration(
        //     border: Border(
        //         bottom: BorderSide(color: primary),
        //         left: BorderSide(color: primary),
        //         top: BorderSide(color: primary)),
        //     borderRadius: const BorderRadius.only(
        //       topLeft: Radius.circular(12),
        //       bottomLeft: Radius.circular(12),
        //     ),
        //   ),
        //   child: Padding(
        //     padding: const EdgeInsets.only(left: 4),
        //     child: SelectableText(
        //       skill.toString().split('.').last,
        //       style: TextStyle(
        //           fontSize: 11,
        //           color: Theme.of(context).colorScheme.onSurface),
        //     ),
        //   ),
        // ),
        //     Container(
        //       padding: const EdgeInsets.symmetric(horizontal: 4),
        //       decoration: BoxDecoration(
        //         border:
        //             Border.all(color: Theme.of(context).colorScheme.primary),
        //         borderRadius: BorderRadius.circular(8),
        //       ),
        //       child: SelectableText(
        //         data.characterData.skillsExpertise.contains(skill)
        //             ? '+${modifier + proficiencyBonus * 2}'
        //             : data.characterData.skillsProficiency.contains(skill)
        //                 ? '+${modifier + proficiencyBonus}'
        //                 : '+$modifier',
        //         style: TextStyle(
        //             fontSize: 18,
        //             color: Theme.of(context).colorScheme.onSurface),
        //       ),
        //     )
        //   ],
        // );
      },
      loading: () => const CircularProgressIndicator(),
      error: (error, stack) => Text('Error: $error'),
    );
  }
}
