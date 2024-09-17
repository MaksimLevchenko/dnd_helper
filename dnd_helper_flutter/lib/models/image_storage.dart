import 'dart:io';
import 'dart:typed_data';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ImageStorage {
  Future<String> saveImage(Uint8List imageBytes, String imageName) async {
    /// Получаем путь к директории для сохранения изображения
    final directory = await getApplicationDocumentsDirectory();
    final imagePath = join(directory.path, imageName);

    /// Сохраняем изображение в файловую систему
    final imageFile = File(imagePath);
    await imageFile.writeAsBytes(imageBytes);

    /// Сохраняем путь к изображению в SharedPreferences
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('image_path', imagePath);

    return imagePath;
  }

  Future<Uint8List?> loadImage() async {
    /// Загружаем путь к изображению из SharedPreferences
    final prefs = await SharedPreferences.getInstance();
    final imagePath = prefs.getString('image_path');

    if (imagePath != null) {
      /// Загружаем изображение из файловой системы
      final imageFile = File(imagePath);
      return await imageFile.readAsBytes();
    }
    return null;
  }
}
