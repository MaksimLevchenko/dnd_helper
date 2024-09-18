import 'package:dnd_helper_flutter/models/armor_data/armor_data.dart';
import 'package:dnd_helper_flutter/models/coins_data/coins_data.dart';

class ArmorDataRepository {
  // Пример списка всех объектов ArmsData
  static final List<ArmorData> _allArmor = [
    const ArmorData(
        name: 'Padded',
        armorClass: 11,
        grantsDexterityBonus: true,
        weight: 8,
        price: CoinsData(golden: 5),
        stelsDisadvantage: true,
        minStrength: 0,
        armorType: 'Light'),
    const ArmorData(
        name: 'Leather',
        armorClass: 11,
        grantsDexterityBonus: true,
        weight: 10,
        price: CoinsData(golden: 10),
        stelsDisadvantage: false,
        minStrength: 0,
        armorType: 'Light'),
    const ArmorData(
        name: 'Studded leather',
        armorClass: 12,
        grantsDexterityBonus: true,
        weight: 13,
        price: CoinsData(golden: 45),
        stelsDisadvantage: false,
        minStrength: 0,
        armorType: 'Light'),
    const ArmorData(
        name: 'Hide',
        armorClass: 12,
        grantsDexterityBonus: true,
        maxDexterityBonus: 2,
        weight: 12,
        price: CoinsData(golden: 10),
        stelsDisadvantage: false,
        minStrength: 0,
        armorType: 'Medium'),
    const ArmorData(
        name: 'Chain shirt',
        armorClass: 13,
        grantsDexterityBonus: true,
        maxDexterityBonus: 2,
        weight: 20,
        price: CoinsData(golden: 50),
        stelsDisadvantage: false,
        minStrength: 0,
        armorType: 'Medium'),
    const ArmorData(
        name: 'Scale mail',
        armorClass: 14,
        grantsDexterityBonus: true,
        maxDexterityBonus: 2,
        weight: 45,
        price: CoinsData(golden: 50),
        stelsDisadvantage: true,
        minStrength: 0,
        armorType: 'Medium'),
    const ArmorData(
        name: 'Breastplate',
        armorClass: 14,
        grantsDexterityBonus: true,
        maxDexterityBonus: 2,
        weight: 20,
        price: CoinsData(golden: 400),
        stelsDisadvantage: false,
        minStrength: 0,
        armorType: 'Medium'),
    const ArmorData(
        name: 'Half plate',
        armorClass: 15,
        grantsDexterityBonus: true,
        maxDexterityBonus: 2,
        weight: 40,
        price: CoinsData(golden: 750),
        stelsDisadvantage: true,
        minStrength: 0,
        armorType: 'Medium'),
    const ArmorData(
        name: 'Ring mail',
        armorClass: 14,
        grantsDexterityBonus: false,
        weight: 40,
        price: CoinsData(golden: 30),
        stelsDisadvantage: true,
        minStrength: 0,
        armorType: 'Heavy'),
    const ArmorData(
        name: 'Chain mail',
        armorClass: 16,
        grantsDexterityBonus: false,
        weight: 55,
        price: CoinsData(golden: 75),
        stelsDisadvantage: true,
        minStrength: 13,
        armorType: 'Heavy'),
    const ArmorData(
        name: 'Splint',
        armorClass: 17,
        grantsDexterityBonus: false,
        weight: 60,
        price: CoinsData(golden: 200),
        stelsDisadvantage: true,
        minStrength: 15,
        armorType: 'Heavy'),
    const ArmorData(
        name: 'Plate',
        armorClass: 18,
        grantsDexterityBonus: false,
        weight: 65,
        price: CoinsData(golden: 1500),
        stelsDisadvantage: true,
        minStrength: 15,
        armorType: 'Heavy'),
  ];

  List<ArmorData> getAllLightArmor() {
    return _allArmor.where((armor) => armor.armorType == 'Light').toList();
  }

  List<ArmorData> getAllMediumArmor() {
    return _allArmor.where((armor) => armor.armorType == 'Medium').toList();
  }

  List<ArmorData> getAllHeavyArmor() {
    return _allArmor.where((armor) => armor.armorType == 'Heavy').toList();
  }
}
