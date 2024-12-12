import 'package:dnd_helper_flutter/models/enums/attributes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'attributes_state.g.dart';
part 'attributes_state.freezed.dart';

enum SelectType { random, defaultType, byHand, purchase }

extension SelectTypeTitle on SelectType {
  String get title {
    switch (this) {
      case SelectType.random:
        return 'random';
      case SelectType.defaultType:
        return 'default';
      case SelectType.byHand:
        return 'byHand';
      case SelectType.purchase:
        return 'purchase';
    }
  }
}

extension TypeExtension on SelectType {
  String toShortString() {
    return toString().split('.').last.toLowerCase();
  }
}

@Riverpod(keepAlive: true)
class AttributesState extends _$AttributesState {
  @override
  AttributesStateModel build() {
    return AttributesStateModel();
  }

  void changeAttributes(Map<Attributes, int> attributes) {
    state = state.copyWith(attributes: attributes);
  }

  void changeType(SelectType type) {
    state = state.copyWith(selectionType: type);
  }
}

@freezed
class AttributesStateModel with _$AttributesStateModel {
  factory AttributesStateModel(
      {@Default(SelectType.defaultType) SelectType selectionType,
      @Default({}) Map<Attributes, int> attributes}) = _AttributesStateModel;
}
