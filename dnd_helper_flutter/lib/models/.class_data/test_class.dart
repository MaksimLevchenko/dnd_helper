import 'dart:typed_data';
import 'package:dnd_helper_flutter/models/.class_data/class_data.dart';
import 'package:flutter/material.dart';
import 'package:dnd_helper_flutter/models/enums/attributes.dart';

import 'dart:io';
import 'package:path_provider/path_provider.dart';

Future<List<int>> readIntegersFromFile(String fileName) async {
  try {
    final file = File(fileName);
    final contents = await file.readAsString();
    final List<String> parts = contents.split(',');
    final List<int> numbers =
        parts.map((part) => int.parse(part.trim())).toList();
    return numbers;
  } catch (e) {
    print('Ошибка чтения файла: $e');
    return [];
  }
}

class ClassDataPage extends StatelessWidget {
  const ClassDataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Пример объекта класса ClassData
    ClassData classData = ClassData(
      name: 'Warrior',
      abilities: ['Attack', 'Defense', 'Stealth', 'Magic'],
      subClass: 'Knight',
      savingThrows: [Attributes.intelligence, Attributes.wisdom],
      proficienciesWeapons: [],
      image: Uint8List.fromList([1, 2, 3]),
    );

    return Scaffold(
      appBar: AppBar(
        leading: FutureBuilder<List<int>>(
          future: readIntegersFromFile('uint_example.txt'),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Icon(Icons.error);
            } else if (snapshot.hasData) {
              List<int> readedImage = snapshot.data!;
              return _buildImage(Uint8List.fromList(readedImage));
            } else {
              return Icon(Icons.error);
            }
          },
        ),
        title: Text(classData.name ?? ''),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            if (classData.subClass != null)
              Text(
                'Subclass: ${classData.subClass}',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            const SizedBox(height: 16),
            Text(
              'Abilities:',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            _buildAbilitiesList(classData.abilities ?? []),
            const SizedBox(height: 16),
            Text(
              'Saving Throws:',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            _buildSavingThrowsList(classData.savingThrows ?? []),
          ],
        ),
      ),
    );
  }

  // Виджет для отображения изображения
  Widget _buildImage(Uint8List imageData) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4.0),
        child: Image.memory(
          imageData,
          width: 30,
          height: 30,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  // Виджет для отображения списка способностей
  Widget _buildAbilitiesList(List<String> abilities) {
    if (abilities.isEmpty) {
      return Text('No abilities available');
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: abilities.map((ability) => Text('- $ability')).toList(),
    );
  }

  // Виджет для отображения списка saving throws
  Widget _buildSavingThrowsList(List<Attributes> savingThrows) {
    if (savingThrows.isEmpty) {
      return Text('No saving throws available');
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: savingThrows
          .map((savingThrow) => Text('- ${savingThrow.name}'))
          .toList(),
    );
  }
}
