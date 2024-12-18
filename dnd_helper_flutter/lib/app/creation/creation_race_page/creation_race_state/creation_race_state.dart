import 'dart:convert';
import 'dart:developer';

import 'package:dnd_helper_flutter/models/race_data/race_data.dart';
import 'package:dnd_helper_flutter/models/race_data/subrace_data.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'creation_race_state.freezed.dart';
part 'creation_race_state.g.dart';

@Riverpod(keepAlive: true)
class CreationRaceState extends _$CreationRaceState {
  @override
  FutureOr<CreationRaceParameters> build() async {
    final races = await _loadRaces();
    if (races == null) {
      return Future.error('Ошибка загрузки классов');
    }
    // TODO only for testing
    if (state.hasValue) {
      return state.value!;
    }
    return CreationRaceParameters(races: races);
  }

  void onSelectRaceTap(RaceData raceData) {
    state = AsyncData(state.value!.selectedRaceData == raceData
        ? state.value!.copyWith()
        : state.value!.copyWith(
            selectedRaceName: raceData.name,
            selectedRaceData: raceData,
            selectedSubraceData: null,
            selectedSubraceName: null,
          ));
  }

  void onSelectSubraceTap(SubraceData subraceData) {
    state = AsyncData(
      state.value!.copyWith(
        selectedSubraceName: subraceData.name,
        selectedSubraceData: subraceData,
      ),
    );
  }
}

FutureOr<List<RaceData>?> _loadRaces() async {
  try {
    final String response =
        await rootBundle.loadString('assets/jsons/races.json');
    final List<dynamic> data = json.decode(response);
    final races = data.map((json) => RaceData.fromJson(json)).toList();
    return races;
  } catch (e) {
    // Обработка ошибки
    log('Ошибка загрузки рас: $e');
    return [];
  }
}

@freezed
class CreationRaceParameters with _$CreationRaceParameters {
  const factory CreationRaceParameters({
    required List<RaceData> races,
    String? selectedRaceName,
    RaceData? selectedRaceData,
    String? selectedSubraceName,
    SubraceData? selectedSubraceData,
  }) = _CreationRaceParameters;
}
