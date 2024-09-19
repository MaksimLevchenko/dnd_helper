import 'package:dnd_helper_flutter/models/class_data/class_repository.dart';
import 'package:flutter/material.dart';
import 'package:dnd_helper_flutter/models/class_data/class_data.dart';

class ClassDetailPage extends StatefulWidget {
  final int classId;

  const ClassDetailPage({super.key, required this.classId});

  @override
  // ignore: library_private_types_in_public_api
  _ClassDetailPageState createState() => _ClassDetailPageState();
}

class _ClassDetailPageState extends State<ClassDetailPage> {
  late ClassData _classData;
  String? _selectedSubclass;
  List<String> _subclasses = [];

  @override
  void initState() {
    super.initState();
    _classData = ClassRepository().getClassById(id: widget.classId);
    _subclasses = _classData.subClasses!;
    _selectedSubclass = _subclasses.isNotEmpty ? _subclasses[0] : null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_classData.name!),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Class: ${_classData.name}',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              'Saving Throws: ${_classData.savingThrows?.map((e) => e.name).join(", ")}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 16),
            Text(
              'Hit Dice: ${_classData.hitDice?.name}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 16),
            Text(
              'Proficiencies: Weapons - ${_classData.proficienciesWeapons?.join(", ")}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 16),
            Text(
              'Proficiencies: Armor - ${_classData.proficienciesArmor?.join(", ")}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 16),
            DropdownButton<String>(
              value: _selectedSubclass,
              items: _subclasses.map((String subclass) {
                return DropdownMenuItem<String>(
                  value: subclass,
                  child: Text(subclass),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedSubclass = newValue!;
                });
              },
              hint: const Text('Select a subclass'),
            ),
            const SizedBox(height: 16),
            if (_selectedSubclass != null)
              Text(
                'Selected Subclass: $_selectedSubclass',
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: _classData.classFeatures?.length,
                itemBuilder: (context, index) {
                  int level = _classData.classFeatures!.keys.elementAt(index);
                  List<Map<String, String>> features =
                      _classData.classFeatures![level]!;

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Level $level Features:',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      ...features.map((feature) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            '${feature.keys.first}: ${feature.values.first}',
                            style: const TextStyle(fontSize: 16),
                          ),
                        );
                      }),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
