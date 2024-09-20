import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CreationClass extends StatefulWidget {
  const CreationClass({super.key});

  @override
  State<CreationClass> createState() => CreationClassState();
}

class CreationClassState extends State<CreationClass> {
  final List<String> classes = [
    "Варвар",
    "Бард",
    "Жрец",
    "Друид",
    "Воин",
    "Монах",
    "Паладин",
    "Следопыт",
    "Чародей",
    "Колдун",
    "Плут",
    "Волшебник",
  ];

  final List<IconData> icons = [
    Icons.favorite,
    Icons.star,
    Icons.thumb_up,
    Icons.access_alarm,
    Icons.ac_unit,
    Icons.accessibility,
    Icons.account_balance,
    Icons.account_circle,
    Icons.add_a_photo,
    Icons.attach_money,
    Icons.airplanemode_active,
    Icons.all_inbox,
  ];

  String selectedClass = '';
  int? hoveredIndex;

  void _onSelectClassTap(String dndClass) {
    setState(() {
      selectedClass = dndClass;
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
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 600),
            child: Column(
              children: [
                LayoutBuilder(
                  builder: (context, constraints) {
                    double iconSize = constraints.maxWidth / 7;

                    int crossAxisCount = constraints.maxWidth >= 600 ? 4 : 3;

                    return GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: crossAxisCount,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      padding: const EdgeInsets.all(10),
                      itemCount: classes.length,
                      itemBuilder: (context, index) {
                        final isSelected = selectedClass == classes[index];
                        final isHovered = hoveredIndex == index;

                        return MouseRegion(
                          onEnter: (_) => setState(() {
                            hoveredIndex = index;
                          }),
                          onExit: (_) => setState(() {
                            hoveredIndex = null;
                          }),
                          child: GestureDetector(
                            onTap: () => _onSelectClassTap(classes[index]),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: isSelected
                                      ? const Color.fromARGB(255, 207, 186, 0)
                                      : isHovered
                                          ? Colors.white
                                          : Colors.transparent,
                                  width: 3,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Center(
                                    child: Icon(
                                      icons[index],
                                      size: iconSize,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    child: Text(
                                      classes[index],
                                      style:
                                          TextStyle(fontSize: iconSize * 0.25),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
                const SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          height: selectedClass.isEmpty ? 0 : 1,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Text(
                      selectedClass.isEmpty ? '' : selectedClass,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 20),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          height: selectedClass.isEmpty ? 0 : 1,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  selectedClass.isEmpty ? '' : 'Информация о $selectedClassе',
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: _onBackButtonTap,
                        child: const Text('Назад')),
                    Visibility(
                      visible: selectedClass.isNotEmpty,
                      child: ElevatedButton(
                        onPressed: _onNextButtonTap,
                        child: const Text('Далее'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
