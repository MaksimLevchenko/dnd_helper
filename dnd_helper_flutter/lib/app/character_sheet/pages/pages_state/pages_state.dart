import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pages_state.g.dart';
part 'pages_state.freezed.dart';

@Riverpod(keepAlive: true)
class PagesState extends _$PagesState {
  @override
  PagesStateModel build() {
    return PagesStateModel(abilitiesTextController: TextEditingController());
  }
}

@freezed
class PagesStateModel with _$PagesStateModel {
  factory PagesStateModel({
    required TextEditingController abilitiesTextController,
  }) = _PagesStateModel;
}
