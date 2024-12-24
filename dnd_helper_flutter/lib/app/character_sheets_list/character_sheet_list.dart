// import 'package:dnd_helper_flutter/app/master/to_master_page.dart';
import 'dart:convert';
import 'dart:developer';

import 'package:dnd_helper_flutter/app/widgets/app_scaffold.dart';
import 'package:dnd_helper_flutter/data/auth_repository/auth_repository.dart';
import 'package:dnd_helper_flutter/data/character_repository/character_repository.dart';
import 'package:dnd_helper_flutter/data/client_repository/client_repository.dart';
import 'package:dnd_helper_flutter/models/arms_data/arms_data.dart';
import 'package:dnd_helper_flutter/models/attacks_data/attacks_data.dart';
import 'package:dnd_helper_flutter/models/background_data/background_data.dart';
import 'package:dnd_helper_flutter/models/character_data/character_data.dart';
import 'package:dnd_helper_flutter/models/class_data/class_data.dart';
import 'package:dnd_helper_flutter/models/class_data/subclass_data.dart';
import 'package:dnd_helper_flutter/models/coins_data/coins_data.dart';
import 'package:dnd_helper_flutter/models/enums/actions.dart';
import 'package:dnd_helper_flutter/models/enums/attributes.dart';
import 'package:dnd_helper_flutter/models/enums/conditions.dart';
import 'package:dnd_helper_flutter/models/enums/damage_types.dart';
import 'package:dnd_helper_flutter/models/enums/dice.dart';
import 'package:dnd_helper_flutter/models/enums/ideology.dart';
import 'package:dnd_helper_flutter/models/enums/skills.dart';
import 'package:dnd_helper_flutter/models/enums/spells_enums/magic_scools.dart';
import 'package:dnd_helper_flutter/models/race_data/race_data.dart';
import 'package:dnd_helper_flutter/models/race_data/subrace_data.dart';
import 'package:dnd_helper_flutter/models/spells_data/spells_data.dart';
import 'package:dnd_helper_flutter/ui/basic_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class CharacterSheetList extends ConsumerWidget {
  const CharacterSheetList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppScaffold(
      body: Center(
        child: Column(
          children: [
            // const ToMasterPage(),
            const Text("here will be a list of character sheets"),
            ref.watch(characterRepositoryProvider).when(
                  error: (error, stackTrace) {
                    return Text('Error: $error');
                  },
                  loading: () => const CircularProgressIndicator(),
                  data: (state) {
                    if (state.isEmpty) {
                      return const Text('No characters');
                    }
                    return Expanded(
                      child: ListView.builder(
                        itemCount: state.length,
                        itemBuilder: (context, index) => ListTile(
                          onTap: () {
                            // _send(ref);
                            GoRouter.of(context).goNamed('characterSheet',
                                pathParameters: {'id': state[index].id!});
                          },
                          title: Text('Sheet ${state[index].characterName}'),
                        ),
                      ),
                    );
                  },
                ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Button(
                onPressed: () {
                  context.push('/creation_class');
                },
                text: 'to creation',
              ),
            ),
          ],
        ),
      ),
    );
  }

  // void _send(WidgetRef ref) async {
  //   final jsonMap = CharacterData(
  //     characterName: 'Hihich ${DateTime.now().toIso8601String()}',
  //     characterRace: RaceData(
  //       name: 'Human',
  //       imageLink: 'link_to_image',
  //       subRaces: [
  //         SubraceData(name: 'Half-Elf', attributes: {
  //           Attributes.charisma: 1,
  //           Attributes.dexterity: 1,
  //           Attributes.constitution: 1,
  //         }),
  //       ],
  //       attacks: [
  //         AttacksData(
  //           name: 'Sword Slash',
  //           damage: Dice.d8,
  //           range: 5,
  //           damageType: DamageTypes.fire,
  //           actionCost: ActionTypes.action,
  //         ),
  //         AttacksData(
  //             name: 'Bow Shot',
  //             damage: Dice.d8,
  //             range: 150,
  //             damageType: DamageTypes.piercing,
  //             actionCost: ActionTypes.action)
  //       ],
  //       raceFeatures: {
  //         'Ability Score Increase': 'Your ability scores each increase by 1.',
  //         'Size': 'Medium',
  //         'Speed': '30 feet',
  //         'Languages': 'Common, Elvish',
  //         'Darkvision':
  //             'You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light.',
  //         'Fey Ancestry':
  //             'You have advantage on saving throws against being charmed, and magic can\'t put you to sleep.',
  //         'Skill Versatility':
  //             'You gain proficiency in two skills of your choice.',
  //       },
  //       skills: [
  //         Skills.acrobatics,
  //         Skills.animalHandling,
  //         Skills.arcana,
  //         Skills.athletics,
  //         Skills.deception,
  //         Skills.history,
  //         Skills.insight,
  //         Skills.intimidation,
  //         Skills.investigation,
  //         Skills.medicine,
  //         Skills.nature,
  //         Skills.perception,
  //         Skills.performance,
  //         Skills.persuasion,
  //         Skills.religion,
  //         Skills.sleightOfHand,
  //         Skills.stealth,
  //         Skills.survival,
  //       ],
  //       speed: 3,
  //       source: 'Player\'s Handbook',
  //     ),
  //     subrace: SubraceData(name: 'Half-Elf', attributes: {
  //       Attributes.charisma: 1,
  //       Attributes.dexterity: 1,
  //       Attributes.constitution: 1,
  //     }),
  //     characterClass: ClassData(
  //       id: '1',
  //       name: 'Ranger',
  //       subClasses: [
  //         'Beast Master',
  //         'Hunter',
  //       ],
  //       savingThrows: [Attributes.dexterity, Attributes.wisdom],
  //       hitDice: Dice.d10,
  //       proficienciesWeapons: ['Simple weapons', 'Martial weapons'],
  //       proficienciesArmor: ['Light armor', 'Medium armor', 'Shields'],
  //       startEquipment: [
  //         ['Longbow', 'Quiver of 20 arrows']
  //       ],
  //       classFeatures: {},
  //       description:
  //           'A warrior who uses martial prowess and nature magic to combat threats on the edges of civilization.',
  //       imageLink: 'link_to_image',
  //       source: 'Player\'s Handbook',
  //     ),
  //     subclass: SubclassData(
  //       name: 'Beast Master',
  //       description:
  //           'A Beast Master Ranger uses their bond with animals to fight alongside them.',
  //       parentClass: 'Ranger',
  //     ),
  //     background: BackgroundData(
  //       description: 'Noble',
  //       equipment:
  //           'A signet ring, a scroll of pedigree, and a purse containing 25 gp',
  //       skillProficiencies: [Skills.history, Skills.persuasion],
  //       toolProficiencies: 'Gaming set',
  //     ),
  //     experience: 5000,
  //     diceHit: Dice.d10,
  //     maxHitPoints: 50,
  //     currentHitPoints: 45,
  //     temporaryHitPoints: 5,
  //     speed: 30,
  //     armorClass: 16,
  //     inspiration: true,
  //     conditions: Conditions.exhaustion,
  //     exhaustion: 1,
  //     attributes: {
  //       Attributes.strength: 15,
  //       Attributes.dexterity: 14,
  //       Attributes.constitution: 13,
  //       Attributes.intelligence: 12,
  //       Attributes.wisdom: 10,
  //       Attributes.charisma: 8,
  //     },
  //     savingThrows: [Attributes.strength, Attributes.dexterity],
  //     skillsProficiency: [Skills.acrobatics, Skills.perception],
  //     skillsExpertise: [Skills.survival],
  //     attacks: [
  //       ArmsData(
  //         armsFeatures: ['long', 'short'],
  //         damage: Dice.d8,
  //         damageType: DamageTypes.acid,
  //         name: 'foo',
  //       ),
  //     ],
  //     preparedSpells: [
  //       SpellsData(
  //         name: 'Cure Wounds',
  //         level: 1,
  //         castingTime: 1,
  //         duration: 0,
  //         description:
  //             'A creature you touch regains a number of hit points equal to 1d8 + your spellcasting ability modifier.',
  //         school: MagicSchools.conjuration,
  //         classes: ClassData(
  //           id: '1',
  //           name: 'Ranger',
  //           subClasses: [],
  //           savingThrows: [Attributes.dexterity, Attributes.wisdom],
  //           hitDice: Dice.d10,
  //           proficienciesWeapons: ['Simple weapons', 'Martial weapons'],
  //           proficienciesArmor: ['Light armor', 'Medium armor', 'Shields'],
  //           startEquipment: [
  //             ['Longbow', 'Quiver of 20 arrows']
  //           ],
  //           classFeatures: {},
  //           description:
  //               'A warrior who uses martial prowess and nature magic to combat threats on the edges of civilization.',
  //           imageLink: 'link_to_image',
  //           source: 'Player\'s Handbook',
  //         ),
  //       )
  //     ],
  //     knownSpells: [],
  //     spellcastingAttribute: Attributes.dexterity,
  //     spellSlots: {1: 4, 2: 2},
  //     languages: ['Common', 'Elvish'],
  //     tools: ['Herbalism Kit'],
  //     weapons: ['Longsword', 'Bow'],
  //     ideology: Ideology.chaoticGood,
  //     biography: 'Born to lead and protect his people.',
  //     weight: '85kg',
  //     height: '6ft',
  //     age: '87',
  //     hairColor: 'Dark',
  //     eyeColor: 'Gray',
  //     skinColor: 'Fair',
  //     alliesAndOrganizations: 'Fellowship of the Ring',
  //     purpose: 'Reclaim the throne of Gondor.',
  //     ideals: 'Courage and honor.',
  //     bonds: 'Protect his friends.',
  //     flaws: 'Sometimes doubts himself.',
  //     notes: 'Loyal to his friends and people.',
  //     coins: CoinsData(
  //       copper: 0,
  //     ),
  //     equipment: ['Ranger\'s outfit', 'Traveling gear'],
  //     treasures: ['Andúril', 'Ring of Barahir'],
  //   ).toJson();

  //   final response = await ref.read(sendPostRequestProvider(
  //     path: 'api/Character/Create',
  //     parametersString: jsonEncode(jsonMap),
  //     authKey: ref.read(authRepositoryProvider).value?.authKey,
  //   ).future);

  //   log(response.body);
  // }
}
