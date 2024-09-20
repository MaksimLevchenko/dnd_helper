import 'dart:typed_data';

import 'package:dnd_helper_flutter/models/armor_data/armor_repository.dart';
import 'package:dnd_helper_flutter/models/arms_data/arms_repository.dart';
import 'package:dnd_helper_flutter/models/class_data/class_data.dart';
import 'package:dnd_helper_flutter/models/class_data/subclass_data.dart';
import 'package:dnd_helper_flutter/models/enums/attributes.dart';
import 'package:dnd_helper_flutter/models/enums/dice.dart';

class SubclassRepository {
  static final List<SubclassData> _subclasses = [
    const SubclassData(
      id: 1,
      name: "Way of the berserker",
      description:
          "The path of the Berserker is a path of untrammeled fury, slick with blood. As you enter the berserker's rage, you thrill in the chaos of battle, heedless of your own health or well-being.",
      parentClass: "barbarian",
      subclassFeatures: {
        3: [
          {
            "Frenzy":
                "You can go into a frenzy when you rage. If you do so, for the duration of your rage you can make a single melee weapon attack as a bonus action on each of your turns after this one. When your rage ends, you suffer one level of exhaustion."
          }
        ],
        6: [
          {
            "Mindless Rage":
                "You can't be charmed or frightened while raging. If you are charmed or frightened when you enter your rage, the effect is suspended for the duration of the rage."
          }
        ],
        10: [
          {
            "Intimidating Presence":
                "You can use your action to frighten someone with your menacing presence. When you do so, choose one creature that you can see within 30 feet of you. If the creature can see or hear you, it must succeed on a Wisdom saving throw (DC equal to 8 + your proficiency bonus + your Charisma modifier) or be frightened of you until the end of your next turn. On subsequent turns, you can use your action to extend the duration of this effect on the frightened creature until the end of your next turn. This effect ends if the creature ends its turn out of line of sight or more than 60 feet away from you."
          }
        ],
        14: [
          {
            "Retaliation":
                "When you take damage from a creature that is within 5 feet of you, you can use your reaction to make a melee weapon attack against that creature."
          }
        ],
      },
    ),
    const SubclassData(
      id: 2,
      name: "Path of the totem warrior",
      description:
          "The Path of the Totem Warrior is a spiritual journey, as the barbarian accepts a spirit animal as guide, protector, and inspiration. In battle, your totem spirit fills you with supernatural might, adding magical fuel to your barbarian rage.",
      parentClass: "barbarian",
      subclassFeatures: {
        3: [
          {
            "Spirit Seeker":
                "Yours is a path that seeks attunement with the natural world, giving you a kinship with beasts. At 3rd level when you adopt this path, you gain the ability to cast the beast sense and speak with animals spells, but only as rituals."
          }
        ],
        6: [
          {
            "Aspect of the Beast":
                "At 6th level, you gain a magical benefit based on the totem animal of your choice. You can choose the same animal you selected at 3rd level or a different one."
          }
        ],
        10: [
          {
            "Spirit Walker":
                "At 10th level, you can cast the commune with nature spell, but only as a ritual. When you do so, a spiritual version of one of the animals you chose for Totem Spirit or Aspect of the Beast appears to you to convey the information you seek."
          }
        ],
        14: [
          {
            "Totemic Attunement":
                "At 14th level, you gain a magical benefit based on a totem animal of your choice. You can choose the same animal you selected previously or a different one."
          }
        ],
      },
    ),
    const SubclassData(
      id: 3,
      name: "Path of the Ancestral Guardian",
      description:
          "The Path of the Ancestral Guardian is a path that calls upon the spirits of your ancestors to protect you and your allies in battle.",
      parentClass: "barbarian",
      subclassFeatures: {
        3: [
          {
            "Ancestral Protectors":
                "Starting when you choose this path at 3rd level, spectral warriors appear when you enter your rage. While you're raging, the first creature you hit with an attack on your turn becomes the target of the warriors, which hinder its attacks. Until the start of your next turn, that target has disadvantage on any attack roll that isn't against you, and when the target hits a creature other than you with an attack, that creature has resistance to the damage dealt by the attack."
          }
        ],
        6: [
          {
            "Spirit Shield":
                "Beginning at 6th level, the guardian spirits that aid you can provide supernatural protection to those you defend. If you are raging and another creature you can see within 30 feet of you takes damage, you can use your reaction to reduce that damage by 2d6."
          }
        ],
        10: [
          {
            "Consult the Spirits":
                "At 10th level, you gain the ability to consult with your ancestral spirits. When you do so, you cast the augury or clairvoyance spell, without using a spell slot or material components. Wisdom is your spellcasting ability for these spells."
          }
        ],
        14: [
          {
            "Vengeful Ancestors":
                "At 14th level, your ancestral spirits grow powerful enough to retaliate. When you use your Spirit Shield to reduce the damage of an attack, the attacker takes an amount of force damage equal to the damage that your Spirit Shield prevents."
          }
        ],
      },
    ),
    const SubclassData(
      id: 4,
      name: "Path of the Storm Herald",
      description:
          "The Path of the Storm Herald is a path that calls upon the power of the storm to fuel your rage and protect your allies.",
      parentClass: "barbarian",
      subclassFeatures: {
        3: [
          {
            "Storm Aura":
                "Starting at 3rd level, you emanate a stormy, magical aura while you rage. The aura extends 10 feet from you in every direction, but not through total cover. Your aura has an effect that you can activate as a bonus action. Choose desert, sea, or tundra. Your aura's effect depends on that chosen environment."
          }
        ],
        6: [
          {
            "Storm Soul":
                "At 6th level, the storm grants you benefits even when your aura isn't active. The benefits are based on the environment you chose for your Storm Aura."
          }
        ],
        10: [
          {
            "Shielding Storm":
                "At 10th level, you learn to use your mastery of the storm to protect others. Each creature of your choice has the damage resistance you gained from the Storm Soul feature while the creature is in your Storm Aura."
          }
        ],
        14: [
          {
            "Raging Storm":
                "At 14th level, the power of the storm you channel grows mightier, lashing out at your foes. The effect is based on the environment you chose for your Storm Aura."
          }
        ],
      },
    ),
    const SubclassData(
      id: 5,
      name: "Path of the Zealot",
      description:
          "The Path of the Zealot is a path that channels divine fury into your rage, making you a conduit for the power of the gods.",
      parentClass: "barbarian",
      subclassFeatures: {
        3: [
          {
            "Divine Fury":
                "Starting when you choose this path at 3rd level, you can channel divine fury into your weapon strikes. While you're raging, the first creature you hit on each of your turns with a weapon attack takes extra damage equal to 1d6 + half your barbarian level. The extra damage is necrotic or radiant; you choose the type of damage when you gain this feature."
          },
          {
            "Warrior of the Gods":
                "At 3rd level, your soul is marked for endless battle. If a spell, such as raise dead, has the sole effect of restoring you to life (but not undeath), the caster doesn't need material components to cast the spell on you."
          }
        ],
        6: [
          {
            "Fanatical Focus":
                "Starting at 6th level, the divine power that fuels your rage can protect you. If you fail a saving throw while you're raging, you can reroll it, and you must use the new roll. You can use this ability only once per rage."
          }
        ],
        10: [
          {
            "Zealous Presence":
                "At 10th level, you can channel divine power to inspire zealotry in others. As a bonus action, you unleash a battle cry infused with divine energy. Up to ten other creatures of your choice within 60 feet of you that can hear you gain advantage on attack rolls and saving throws until the start of your next turn."
          }
        ],
        14: [
          {
            "Rage Beyond Death":
                "Beginning at 14th level, the divine power that fuels your rage allows you to shrug off fatal blows. While you're raging, having 0 hit points doesn't knock you unconscious. You still must make death saving throws, and you suffer the normal effects of taking damage while at 0 hit points. However, if you would die due to failing death saving throws, you don't die until your rage ends, and you die then only if you still have 0 hit points."
          }
        ],
      },
    ),
  ];
  String getSubclassName({required int id}) {
    try {
      return _subclasses.firstWhere((element) => element.id == id).name ?? "";
    } catch (e) {
      return "";
    }
  }
}

class ClassRepository {
  ClassData getClassById({required int id}) {
    return _classes.firstWhere(
      (element) => element.id == id,
      orElse: () => ClassData(
        id: 0,
        name: "Not found id: $id",
        subClasses: [],
        savingThrows: [],
        hitDice: Dice.d4,
        proficienciesWeapons: [],
        proficienciesArmor: [],
        startEquipment: [],
        classFeatures: {},
        description: {},
        image: Uint8List(1234),
      ),
    );
  }

  ClassData getClassByName({required String name}) {
    return _classes.firstWhere(
      (element) => element.name == name,
      orElse: () => ClassData(
        id: 0,
        name: "Not found name: $name",
        subClasses: [],
        savingThrows: [],
        hitDice: Dice.d4,
        proficienciesWeapons: [],
        proficienciesArmor: [],
        startEquipment: [],
        classFeatures: {},
        description: {},
        image: Uint8List(1234),
      ),
    );
  }

  static final List<ClassData> _classes = [
    ClassData(
        id: 2,
        name: "barbarian",
        description: {
          "ПЕРВОБЫТНЫЕ ИНСТИНКТЫ":
              "Жители посёлков и городов настолько гордятся своей цивилизованностью, отличающей их от животных, словно отрицание собственной природы подчёркивает их превосходство. Варвары же, напротив, считают цивилизованность проявлением слабости. Связь между их животными инстинктами, первобытной энергетикой и свирепой яростью очень сильна. Варвары чувствуют себя неуютно в окружении стен или в толпе, но раскрываются в родных диких просторах, в тундре, джунглях или степях, где их племена живут и охотятся. Лучше всего варвары проявляют себя посреди хаоса битвы. Они могут впасть в состояние берсерка, утратив контроль над собственной яростью, и получая взамен нечеловеческую силу и стойкость. Варвар может лишь несколько раз воспользоваться резервами собственного гнева, прежде чем ему потребуется отдых, но обычно этих нескольких раз хватает, чтобы справиться с любой угрозой, встреченной на пути."
        },
        subClasses: [
          SubclassRepository().getSubclassName(id: 1),
          SubclassRepository().getSubclassName(id: 2),
          SubclassRepository().getSubclassName(id: 3),
          SubclassRepository().getSubclassName(id: 4),
          SubclassRepository().getSubclassName(id: 5),
        ],
        savingThrows: [Attributes.strength, Attributes.constitution],
        hitDice: Dice.d12,
        proficienciesWeapons: ArmsDataRepository().getAllArms(),
        proficienciesArmor: ArmorRepository().getAllLightArmor() +
            ArmorRepository().getAllMediumArmor(),
        startEquipment: [
          ["Greataxe", "Any martial melee weapon"],
          ["Two handaxes", "Any simple weapon"],
          ["Explorer's pack"],
          ["Four javelins"]
        ],
        classFeatures: {
          1: [
            {
              "Rage":
                  "In battle, you fight with primal ferocity. On your turn, you can enter a rage as a bonus action. While raging, you gain the following benefits if you aren't wearing heavy armor: You have advantage on Strength checks and Strength saving throws. When you make a melee weapon attack using Strength, you gain a bonus to the damage roll that increases as you gain levels as a barbarian, as shown in the Rage Damage column of the Barbarian table. You have resistance to bludgeoning, piercing, and slashing damage."
            },
            {
              "Unarmored Defense":
                  "While you are not wearing any armor, your Armor Class equals 10 + your Dexterity modifier + your Constitution modifier. You can use a shield and still gain this benefit."
            }
          ],
          2: [
            {
              "Reckless Attack":
                  "Starting at 2nd level, you can throw aside all concern for defense to attack with fierce desperation. When you make your first attack on your turn, you can decide to attack recklessly. Doing so gives you advantage on melee weapon attack rolls using Strength during this turn, but attack rolls against you have advantage until your next turn."
            },
            {
              "Danger Sense":
                  "At 2nd level, you gain an uncanny sense of when things nearby aren't as they should be, giving you an edge when you dodge away from danger. You have advantage on Dexterity saving throws against effects that you can see, such as traps and spells. To gain this benefit, you can't be blinded, deafened, or incapacitated."
            }
          ],
          3: [
            {
              "Primal Path":
                  "At 3rd level, you choose a path that shapes the nature of your rage. Choose the Path of the Berserker or the Path of the Totem Warrior, both detailed at the end of the class description. Your choice grants you features at 3rd level and again at 6th, 10th, and 14th levels."
            }
          ],
          4: [
            {
              "Ability Score Improvement":
                  "When you reach 4th level, and again at 8th, 12th, 16th, and 19th level, you can increase one ability score of your choice by 2, or you can increase two ability scores of your choice by 1. As normal, you can't increase an ability score above 20 using this feature."
            }
          ],
          5: [
            {
              "Extra Attack":
                  "Beginning at 5th level, you can attack twice, instead of once, whenever you take the Attack action on your turn."
            },
            {
              "Fast Movement":
                  "Starting at 5th level, your speed increases by 10 feet while you aren't wearing heavy armor."
            }
          ],
          6: [
            {
              "Path Feature":
                  "At 6th level, you gain a feature depending on the path you choose."
            }
          ],
          7: [
            {
              "Feral Instinct":
                  "By 7th level, your instincts are so honed that you have advantage on initiative rolls."
            }
          ],
          8: [
            {
              "Ability Score Improvement":
                  "When you reach 4th level, and again at 8th, 12th, 16th, and 19th level, you can increase one ability score of your choice by 2, or you can increase two ability scores of your choice by 1. As normal, you can't increase an ability score above 20 using this feature."
            }
          ],
          9: [
            {
              "Brutal Critical":
                  "Beginning at 9th level, you can roll one additional weapon damage die when determining the extra damage for a critical hit with a melee attack."
            }
          ],
          10: [
            {
              "Path Feature":
                  "At 10th level, you gain a feature depending on the path you choose."
            }
          ],
          11: [
            {
              "Relentless Rage":
                  "Starting at 11th level, your rage can keep you fighting despite grievous wounds. If you drop to 0 hit points while you're raging and don't die outright, you can make a DC 10 Constitution saving throw. If you succeed, you drop to 1 hit point instead."
            }
          ],
          12: [
            {
              "Ability Score Improvement":
                  "When you reach 4th level, and again at 8th, 12th, 16th, and 19th level, you can increase one ability score of your choice by 2, or you can increase two ability scores of your choice by 1. As normal, you can't increase an ability score above 20 using this feature."
            }
          ],
          13: [
            {
              "Brutal Critical":
                  "Beginning at 9th level, you can roll one additional weapon damage die when determining the extra damage for a critical hit with a melee attack."
            }
          ],
          14: [
            {
              "Path Feature":
                  "At 14th level, you gain a feature depending on the path you choose."
            }
          ],
          15: [
            {
              "Persistent Rage":
                  "Beginning at 15th level, your rage is so fierce that it ends early only if you fall unconscious or if you choose to end it."
            }
          ],
          16: [
            {
              "Ability Score Improvement":
                  "When you reach 4th level, and again at 8th, 12th, 16th, and 19th level, you can increase one ability score of your choice by 2, or you can increase two ability scores of your choice by 1. As normal, you can't increase an ability score above 20 using this feature."
            }
          ],
          17: [
            {
              "Brutal Critical":
                  "Beginning at 9th level, you can roll one additional weapon damage die when determining the extra damage for a critical hit with a melee attack."
            }
          ],
          18: [
            {
              "Indomitable Might":
                  "Beginning at 18th level, if your total for a Strength check is less than your Strength score, you can use that score in place of the total."
            }
          ],
          19: [
            {
              "Ability Score Improvement":
                  "When you reach 4th level, and again at 8th, 12th, 16th, and 19th level, you can increase one ability score of your choice by 2, or you can increase two ability scores of your choice by 1. As normal, you can't increase an ability score above 20 using this feature."
            }
          ],
          20: [
            {
              "Primal Champion":
                  "At 20th level, you embody the power of the wilds. Your Strength and Constitution scores increase by 4. Your maximum for those scores is now 24."
            }
          ],
        },
        image: Uint8List(123)),
  ];
}
