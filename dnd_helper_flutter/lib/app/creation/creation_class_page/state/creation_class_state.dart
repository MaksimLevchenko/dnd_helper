import 'dart:convert';
import 'dart:developer';

import 'package:dnd_helper_flutter/models/class_data/class_data.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'creation_class_state.g.dart';
part 'creation_class_state.freezed.dart';

@Riverpod(keepAlive: true)
class CreationClassState extends _$CreationClassState {
  @override
  FutureOr<CreationClassParameters> build() async {
    final classes = await _loadClasses();
    if (classes == null) {
      return Future.error('Ошибка загрузки классов');
    }
    // TODO only for testing
    if (state.hasValue) {
      return state.value!;
    }
    return CreationClassParameters(classes: classes);
  }

  void onSelectClassTap(ClassData dndClass) {
    state = AsyncData(
      state.value!.copyWith(
        selectedClassName: dndClass.name,
        selectedClassData: dndClass,
      ),
    );
  }

  Future<List<ClassData>?> _loadClasses() async {
    try {
      final String response =
          await rootBundle.loadString('assets/jsons/classes.json');
      final List<dynamic> data = json.decode(response);
      final classes = data.map((json) => ClassData.fromJson(json)).toList();
      return classes;
    } catch (e) {
      // Обработка ошибки
      log('Ошибка загрузки классов: $e');
      return null;
    }
  }
}

@freezed
class CreationClassParameters with _$CreationClassParameters {
  factory CreationClassParameters({
    required List<ClassData> classes,
    String? selectedClassName,
    ClassData? selectedClassData,
  }) = _CreationClassParameters;
}
