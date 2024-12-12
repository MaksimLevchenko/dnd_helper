import 'dart:convert';
import 'dart:developer';

import 'package:dnd_helper_flutter/models/background_data/background_data.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'creation_background_state.freezed.dart';
part 'creation_background_state.g.dart';

@Riverpod(keepAlive: true)
class CreationBackgroundState extends _$CreationBackgroundState {
  @override
  FutureOr<CreationBackgroundStateModel> build() async {
    final backgrounds = await _loadBackgrounds();
    if (backgrounds == null) {
      return Future.error('');
    }
    return CreationBackgroundStateModel(backgrounds: backgrounds);
  }

  void onSelectRaceTap(BackgroundData backgroundData) {
    state = AsyncData(
      state.value!.copyWith(
        selectedBackgroundName: backgroundData.name,
        selectedBackground: backgroundData,
      ),
    );
  }
}

FutureOr<List<BackgroundData>?> _loadBackgrounds() async {
  try {
    final String response =
        await rootBundle.loadString('assets/jsons/backgrounds.json');
    final List<dynamic> data = json.decode(response);
    final backgrounds =
        data.map((json) => BackgroundData.fromJson(json)).toList();
    return backgrounds;
  } catch (e) {
    // Обработка ошибки
    log('Ошибка загрузки предысторий: $e');
    return [];
  }
}

@freezed
class CreationBackgroundStateModel with _$CreationBackgroundStateModel {
  const factory CreationBackgroundStateModel({
    required List<BackgroundData> backgrounds,
    BackgroundData? selectedBackground,
    String? selectedBackgroundName,
  }) = _CreationRaceParameters;
}
