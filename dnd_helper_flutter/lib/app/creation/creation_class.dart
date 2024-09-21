import 'dart:convert';
import 'package:dnd_helper_flutter/models/class_data/class_data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/services.dart'; // Для загрузки JSON

class CreationClass extends StatefulWidget {
  const CreationClass({super.key});

  @override
  State<CreationClass> createState() => CreationClassState();
}

class CreationClassState extends State<CreationClass> {
  List<ClassData> classes = [];
  String selectedClassName = '';
  ClassData? selectedClassData;
  int? hoveredIndex;

  @override
  void initState() {
    super.initState();
    _loadClasses();
  }

  Future<void> _loadClasses() async {
    // Загрузка JSON из файла
    final String response = await rootBundle
        .loadString('assets/jsons/classes.json'); // Путь к вашему JSON
    final List<dynamic> data = json.decode(response);
    setState(() {
      classes = data.map((json) => ClassData.fromJson(json)).toList();
    });
  }

  void _onSelectClassTap(ClassData dndClass) {
    setState(() {
      selectedClassName = dndClass.name;
      selectedClassData = dndClass;
    });
  }

  void _onNextButtonTap() {
    context.push('/creation_race');
  }

  void _onBackButtonTap() {
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 600),
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          double iconSize = constraints.maxWidth / 7;

                          int crossAxisCount =
                              constraints.maxWidth >= 600 ? 4 : 3;

                          return GridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: crossAxisCount,
                            ),
                            padding: const EdgeInsets.all(10),
                            itemCount: classes.length,
                            itemBuilder: (context, index) {
                              final isSelected =
                                  selectedClassName == classes[index].name;
                              final isHovered = hoveredIndex == index;

                              return MouseRegion(
                                onEnter: (_) => setState(() {
                                  hoveredIndex = index;
                                }),
                                onExit: (_) => setState(() {
                                  hoveredIndex = null;
                                }),
                                child: GestureDetector(
                                  onTap: () =>
                                      _onSelectClassTap(classes[index]),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: iconSize * 1.3,
                                        width: iconSize * 1.3,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: isSelected
                                                ? const Color.fromARGB(
                                                    255, 207, 186, 0)
                                                : isHovered
                                                    ? Colors.white
                                                    : Colors.transparent,
                                            width: 3,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Center(
                                              child: Icon(
                                                Icons.star,
                                                size: iconSize,
                                                color: Colors.grey[700],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(classes[index].name),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 600),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              height: selectedClassName.isEmpty ? 0 : 1,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Text(
                          selectedClassName.isEmpty ? '' : selectedClassName,
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 20),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              height: selectedClassName.isEmpty ? 0 : 1,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 600),
                    child: Column(
                      children: [
                        SelectableText(
                          selectedClassName.isEmpty
                              ? ''
                              : 'Информация о $selectedClassName',
                          style: const TextStyle(fontSize: 20),
                        ),
                        if (selectedClassData != null)
                          SelectableText(' ${selectedClassData!.description}'),
                        const SizedBox(height: 20),
                        if (selectedClassData != null)
                          SelectableText(
                              'Кость хитов: ${selectedClassData!.hitDice}'),
                        if (selectedClassData != null)
                          SelectableText(
                              'Оружие: ${selectedClassData!.proficienciesWeapons}'),
                        if (selectedClassData != null)
                          SelectableText(
                              'Броня: ${selectedClassData!.proficienciesArmor}'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 600),
            child: Row(
              mainAxisAlignment: selectedClassName.isEmpty
                  ? MainAxisAlignment.center
                  : MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _onBackButtonTap,
                  child: const Text('Назад'),
                ),
                if (selectedClassName.isNotEmpty)
                  ElevatedButton(
                    onPressed: _onNextButtonTap,
                    child: const Text('Далее'),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
