import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'personal_state.freezed.dart';
part 'personal_state.g.dart';

@riverpod
class PersonalState extends _$PersonalState {
  @override
  PersonalStateModel build() {
    return PersonalStateModel(
      controllers: {
        'name': TextEditingController(),
        'biography': TextEditingController(),
        'weight': TextEditingController(),
        'height': TextEditingController(),
        'age': TextEditingController(),
        'hairColor': TextEditingController(),
        'eyeColor': TextEditingController(),
        'skinColor': TextEditingController(),
        'alliesAndOrganizations': TextEditingController(),
        'purpose': TextEditingController(),
        'ideals': TextEditingController(),
        'bonds': TextEditingController(),
        'flaws': TextEditingController(),
      },
    );
  }
}

@freezed
class PersonalStateModel with _$PersonalStateModel {
  factory PersonalStateModel({
    required Map<String, TextEditingController> controllers,
  }) = _PersonalStateModel;
}
