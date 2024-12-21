import 'package:dnd_helper_flutter/app/character_sheet/character_sheet_state/character_sheet_state.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pages_state.g.dart';
part 'pages_state.freezed.dart';

@Riverpod(keepAlive: true)
class PagesState extends _$PagesState {
  @override
  Future<PagesStateModel> build(String characterId) async {
    final characterState =
        await ref.watch(characterSheetStateProvider(characterId).future);
    final data = characterState.characterData;
    TextEditingController createController([String? text]) =>
        TextEditingController(text: text);

    return PagesStateModel(
      characterId: characterId,
      abilitiesController: createController(),
      biographyController: createController(data.biography),
      weightController: createController(data.weight),
      heightController: createController(data.height),
      ageController: createController(data.age),
      hairColorController: createController(data.hairColor),
      eyeColorController: createController(data.eyeColor),
      skinColorController: createController(data.skinColor),
      alliesAndOrganizationsController:
          createController(data.alliesAndOrganizations),
      purposeController: createController(data.purpose),
      idealsController: createController(data.ideals),
      bondsController: createController(data.bonds),
      flawsController: createController(data.flaws),
    );
  }

  void onControllerChange() {}
}

@freezed
class PagesStateModel with _$PagesStateModel {
  factory PagesStateModel({
    required String characterId,
    required TextEditingController abilitiesController,
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
  }) = _PagesStateModel;
}
