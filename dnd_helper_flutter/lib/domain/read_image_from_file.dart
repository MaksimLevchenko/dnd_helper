import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

Future<Uint8List?> readImageFromFile(String filePath) async {
  try {
    final file = File(filePath);
    final imageData = await file.readAsBytes();
    return imageData;
  } catch (e) {
    log('Error reading file: $e');
    return null;
  }
}
