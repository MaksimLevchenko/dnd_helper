import 'dart:developer';

import 'package:dnd_helper_flutter/app/character_sheet/character_sheet_state/character_sheet_state.dart';
import 'package:dnd_helper_flutter/data/character_repository/character_repository.dart';
import 'package:dnd_helper_flutter/models/arms_data/arms_data.dart';
import 'package:dnd_helper_flutter/models/background_data/background_data.dart';
import 'package:dnd_helper_flutter/models/character_data/character_data.dart';
import 'package:dnd_helper_flutter/models/enums/conditions.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pages_state.g.dart';
part 'pages_state.freezed.dart';

@Riverpod(keepAlive: true)
class PagesState extends _$PagesState {
  CharacterData? character;

  @override
  Future<PagesStateModel> build(String characterId) async {
    final characterState =
        await ref.watch(characterSheetStateProvider(characterId).future);
    character = characterState.characterData;
    TextEditingController createController([String? text]) =>
        TextEditingController(text: text ?? '');

    if (character == null) {
      log('Character not found');
      return Future.error('Character not found');
    }

    return PagesStateModel(
      characterId: characterId,
      backstoryController: createController(character?.background?.name),
      biographyController: createController(character!.biography),
      weightController: createController(character!.weight),
      heightController: createController(character!.height),
      ageController: createController(character!.age),
      hairColorController: createController(character!.hairColor),
      eyeColorController: createController(character!.eyeColor),
      skinColorController: createController(character!.skinColor),
      alliesAndOrganizationsController:
          createController(character!.alliesAndOrganizations),
      purposeController: createController(character!.purpose),
      idealsController: createController(character!.ideals),
      bondsController: createController(character!.bonds),
      flawsController: createController(character!.flaws),
      backstoryDescriptionController:
          createController(character?.background?.description),
      hitPointsController:
          createController((character?.maxHitPoints ?? 0).toString()),
      armorClassController:
          createController((character?.armorClass ?? 10).toString()),
      speedController: createController((character?.speed ?? 30).toString()),
      attacksControllers: [
        for (var i = 0;
            i <
                (ref
                        .watch(characterSheetStateProvider(characterId))
                        .value!
                        .characterData
                        .attacks
                        ?.length ??
                    1);
            i++)
          createController(character?.attacks?[i].name),
      ],
    );
  }

  void save(String characterId) {
    future.then(
      (value) {
        ref.read(characterRepositoryProvider.notifier).saveCharacter(
              character!.copyWith(
                biography: value.biographyController.text,
                weight: value.weightController.text,
                height: value.heightController.text,
                age: value.ageController.text,
                hairColor: value.hairColorController.text,
                eyeColor: value.eyeColorController.text,
                skinColor: value.skinColorController.text,
                alliesAndOrganizations:
                    value.alliesAndOrganizationsController.text,
                purpose: value.purposeController.text,
                ideals: value.idealsController.text,
                bonds: value.bondsController.text,
                flaws: value.flawsController.text,
                background: character?.background?.copyWith(
                        name: value.backstoryController.text,
                        description:
                            value.backstoryDescriptionController.text) ??
                    BackgroundData(
                        name: value.backstoryController.text,
                        description: value.backstoryDescriptionController.text),
                maxHitPoints: int.parse(value.hitPointsController.text),
                armorClass: int.parse(value.armorClassController.text),
                speed: int.parse(value.speedController.text),
                attacks: [
                  for (var controller in value.attacksControllers)
                    ArmsData(name: controller.text)
                ],
              ),
            );
      },
    );
  }
}

@freezed
class PagesStateModel with _$PagesStateModel {
  factory PagesStateModel({
    required String characterId,
    required TextEditingController biographyController,
    required TextEditingController weightController,
    required TextEditingController heightController,
    required TextEditingController ageController,
    required TextEditingController hairColorController,
    required TextEditingController eyeColorController,
    required TextEditingController skinColorController,
    required TextEditingController alliesAndOrganizationsController,
    required TextEditingController purposeController,
    required TextEditingController idealsController,
    required TextEditingController bondsController,
    required TextEditingController flawsController,
    required TextEditingController backstoryController,
    required TextEditingController backstoryDescriptionController,
    required TextEditingController hitPointsController,
    required TextEditingController armorClassController,
    required TextEditingController speedController,
    required List<TextEditingController> attacksControllers,
  }) = _PagesStateModel;
}
