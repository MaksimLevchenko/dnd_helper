import 'dart:convert';
import 'package:dnd_helper_flutter/models/class_model/class_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ClassDataUtils {
  static String toJsonString(ClassData data) => jsonEncode(data.toJson());

  static ClassData fromJsonString(String jsonString) =>
      ClassData.fromJson(jsonDecode(jsonString));
}

class ClassDataRepository {
  Future<void> saveClassData(ClassData data) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('class_data', ClassDataUtils.toJsonString(data));
  }

  Future<ClassData?> loadClassData() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString('arms_data');
    if (jsonString != null) {
      return ClassDataUtils.fromJsonString(jsonString);
    }
    return null;
  }
}
