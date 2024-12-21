import 'dart:developer';

import 'package:dnd_helper_flutter/models/arms_data/arms_data.dart';
import 'package:dnd_helper_flutter/models/background_data/background_data.dart';
import 'package:dnd_helper_flutter/models/character_data/character_data.dart';
import 'package:dnd_helper_flutter/models/class_data/class_data.dart';
import 'package:dnd_helper_flutter/models/coins_data/coins_data.dart';
import 'package:dnd_helper_flutter/models/enums/attributes.dart';
import 'package:dnd_helper_flutter/models/enums/dice.dart';
import 'package:dnd_helper_flutter/models/enums/ideology.dart';
import 'package:dnd_helper_flutter/models/enums/skills.dart';
import 'package:dnd_helper_flutter/models/race_data/race_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'character_repository.g.dart';

@Riverpod(keepAlive: true)
class CharacterRepository extends _$CharacterRepository {
  @override
  FutureOr<List<CharacterData>> build() async {
    // TODO get characters from server
    return [
      const CharacterData(
        id: '1',
        characterName: 'Aragorn',
        characterRace: RaceData(name: 'Human', imageLink: 'link_to_image'),
        subrace: null,
        characterClass: ClassData(
          id: '1',
          name: 'Ranger',
          subClasses: [],
          savingThrows: [Attributes.dexterity, Attributes.wisdom],
          hitDice: Dice.d10,
          proficienciesWeapons: ['Simple weapons', 'Martial weapons'],
          proficienciesArmor: ['Light armor', 'Medium armor', 'Shields'],
          startEquipment: [
            ['Longbow', 'Quiver of 20 arrows']
          ],
          classFeatures: {},
          description:
              'A warrior who uses martial prowess and nature magic to combat threats on the edges of civilization.',
          imageLink: 'link_to_image',
          source: 'Player\'s Handbook',
        ),
        subclass: null,
        background: BackgroundData(description: 'Noble'),
        experience: 5000,
        diceHit: Dice.d10,
        maxHitPoints: 50,
        currentHitPoints: 45,
        temporaryHitPoints: 5,
        speed: 30,
        armorClass: 16,
        inspiration: true,
        conditions: null,
        exhaustion: 1,
        attributes: {
          Attributes.strength: 15,
          Attributes.dexterity: 14,
          Attributes.constitution: 13,
          Attributes.intelligence: 12,
          Attributes.wisdom: 10,
          Attributes.charisma: 8,
        },
        savingThrows: [Attributes.strength, Attributes.dexterity],
        skillsProficiency: [Skills.acrobatics, Skills.perception],
        skillsExpertise: [Skills.survival],
        attacks: [
          ArmsData(),
        ],
        preparedSpells: [],
        knownSpells: [],
        spellcastingAttribute: null,
        spellSlots: {1: 4, 2: 2},
        languages: ['Common', 'Elvish'],
        tools: ['Herbalism Kit'],
        weapons: ['Longsword', 'Bow'],
        ideology: Ideology.chaoticGood,
        biography: 'Born to lead and protect his people.',
        weight: '85kg',
        height: '6ft',
        age: '87',
        hairColor: 'Dark',
        eyeColor: 'Gray',
        skinColor: 'Fair',
        alliesAndOrganizations: 'Fellowship of the Ring',
        purpose: 'Reclaim the throne of Gondor.',
        ideals: 'Courage and honor.',
        bonds: 'Protect his friends.',
        flaws: 'Sometimes doubts himself.',
        notes: 'Loyal to his friends and people.',
        coins: CoinsData(
          copper: 0,
        ),
        equipment: ['Ranger\'s outfit', 'Traveling gear'],
        treasures: ['Andúril', 'Ring of Barahir'],
      )
    ];
  }

  FutureOr<CharacterData> saveCharacter(CharacterData character) {
    final characterWithId = character.copyWith(id: '${DateTime.now()}');
    state = AsyncData([
      characterWithId,
      ...state.value?.where((element) => element.id != character.id) ?? [],
    ]);
    return characterWithId;
  }

  FutureOr<bool> deleteCharacter(String id) {
    state = AsyncData(
      state.value!.where((element) => element.id != id).toList(),
    );
    return true;
  }
}
