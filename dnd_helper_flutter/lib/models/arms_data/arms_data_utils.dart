import 'dart:convert';
import 'package:dnd_helper_flutter/models/arms_data/arms_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ArmsDataUtils {
  static String toJsonString(ArmsData data) => jsonEncode(data.toJson());

  static ArmsData fromJsonString(String jsonString) =>
      ArmsData.fromJson(jsonDecode(jsonString));
}

class ArmsDataRepository {
  Future<void> saveArmsData(ArmsData data) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('arms_data', ArmsDataUtils.toJsonString(data));
  }

  Future<ArmsData?> loadArmsData() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString('arms_data');
    if (jsonString != null) {
      return ArmsDataUtils.fromJsonString(jsonString);
    }
    return null;
  }
}
