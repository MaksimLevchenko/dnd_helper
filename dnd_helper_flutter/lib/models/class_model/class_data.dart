import 'dart:typed_data';
import 'package:dnd_helper_flutter/converters/uint8list_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'class_data.freezed.dart';
part 'class_data.g.dart';

@freezed
class ClassData with _$ClassData {
  const factory ClassData(
      {String? name,
      int? level,
      List<String>? abilities,
      String? subClass,
      @Uint8ListConverter() required Uint8List image}) = _ClassData;

  factory ClassData.fromJson(Map<String, dynamic> json) =>
      _$ClassDataFromJson(json);
}
