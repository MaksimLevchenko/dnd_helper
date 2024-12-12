import 'package:dnd_helper_flutter/models/enums/attributes.dart';
import 'package:flutter/material.dart';

class DefaultSelection extends StatefulWidget {
  final List<Attributes> statNames; // Названия характеристик
  final List<int> statValues; // Доступные значения характеристик
  final void Function(Map<Attributes, int>)
      onAssignedStatsChanged; // Callback для передачи результатов

  const DefaultSelection({
    super.key,
    required this.statNames,
    required this.statValues,
    required this.onAssignedStatsChanged,
  });

  @override
  DefaultSelectionState createState() => DefaultSelectionState();
}

class DefaultSelectionState extends State<DefaultSelection> {
  late Map<Attributes, int?>
      assignedStats; // Связь характеристик с их значениями
  late List<int> remainingValues; // Доступные для перетаскивания значения

  @override
  void initState() {
    super.initState();
    // Инициализация данных
    assignedStats = {for (var stat in widget.statNames) stat: null};
    remainingValues = List.from(widget.statValues);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Заголовок
        const Text(
          'Drag the stat values into the boxes',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 16),
        // Секция значений для перетаскивания
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: remainingValues.map((value) {
            return Draggable<int>(
              data: value,
              feedback: _buildDraggableBox(value, isDragging: true),
              childWhenDragging: _buildDraggableBox(value, isDragging: false),
              child: _buildDraggableBox(value, isDragging: false),
            );
          }).toList(),
        ),
        const SizedBox(height: 32),
        // Секция контейнеров для характеристик
        Expanded(
          child: ListView(
            children: widget.statNames.map((stat) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 8.0),
                child: DragTarget<int>(
                  builder: (context, candidateData, rejectedData) {
                    return GestureDetector(
                      onLongPress: () {
                        if (assignedStats[stat] != null) {
                          setState(() {
                            // Возвращаем значение в доступные
                            remainingValues.add(assignedStats[stat]!);
                            assignedStats[stat] = null;
                            // Уведомляем родительский виджет
                            widget.onAssignedStatsChanged(
                              assignedStats
                                  .map((key, val) => MapEntry(key, val ?? 0)),
                            );
                          });
                        }
                      },
                      child: Container(
                        height: 60,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: assignedStats[stat] != null
                              ? Theme.of(context).colorScheme.tertiary
                              : Theme.of(context).colorScheme.surface,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            assignedStats[stat]?.toString() ?? stat.name,
                            style: TextStyle(
                              fontSize: 18,
                              color: assignedStats[stat] != null
                                  ? Theme.of(context).colorScheme.onTertiary
                                  : Theme.of(context).colorScheme.onSurface,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  onAccept: (value) {
                    setState(() {
                      // Удалить значение из доступных
                      remainingValues.remove(value);
                      // Присвоить характеристике значение
                      assignedStats[stat] = value;
                      // Уведомить родительский виджет
                      widget.onAssignedStatsChanged(
                        assignedStats
                            .map((key, val) => MapEntry(key, val ?? 0)),
                      );
                    });
                  },
                  onWillAccept: (value) =>
                      assignedStats[stat] == null && value != null,
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildDraggableBox(int value, {required bool isDragging}) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: isDragging
            ? Theme.of(context).colorScheme.tertiary
            : Theme.of(context).colorScheme.tertiary,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Theme.of(context).colorScheme.tertiary,
          width: 1,
        ),
      ),
      child: Center(
        child: Text(
          value.toString(),
          style: TextStyle(
              fontSize: 18, color: Theme.of(context).colorScheme.onTertiary),
        ),
      ),
    );
  }
}
