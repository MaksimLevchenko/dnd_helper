import 'package:dnd_helper_flutter/models/enums/attributes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class DefaultSelection extends ConsumerStatefulWidget {
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
  ConsumerState<DefaultSelection> createState() => DefaultSelectionState();
}

class DefaultSelectionState extends ConsumerState<DefaultSelection> {
  late Map<Attributes, int>
      assignedStats; // Связь характеристик с их значениями
  late Map<Attributes, int> bonusesPlusOne; // Связь характеристик с бонусами

  late Map<Attributes, int> bonusesPlusTwo; // Связь характеристик с бонусами

  late List<int> remainingValues; // Доступные для перетаскивания значения

  @override
  void initState() {
    super.initState();
    // Инициализация данных
    assignedStats = {for (var stat in widget.statNames) stat: 0};
    bonusesPlusOne = {for (var stat in widget.statNames) stat: 0};
    bonusesPlusTwo = {for (var stat in widget.statNames) stat: 0};
    remainingValues = List.from(widget.statValues);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Drag the stat values into the boxes',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        const Gap(16),
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
        if (remainingValues.isNotEmpty) const Gap(16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildStatNamesColumn(),
            _buildDragTargetColumn(),
            _buildBonusTwoCheckboxColumn(),
            _buildBonusOneCheckboxColumn()
          ],
        ),
      ],
    );
  }

  Widget _buildStatNamesColumn() {
    return SizedBox(
      height: 500,
      width: 200,
      child: ListView(
        children: widget.statNames.map((stat) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 13),
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
              ),
              child: Text(
                stat.name,
                style: TextStyle(
                  fontSize: 18,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildDragTargetColumn() {
    return SizedBox(
      height: 500,
      width: 70,
      child: ListView(
        children: widget.statNames.map((stat) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
            child: DragTarget<int>(
              builder: (context, candidateData, rejectedData) {
                return GestureDetector(
                  onLongPress: () {
                    setState(() {
                      // Возвращаем значение в доступные
                      remainingValues.add(assignedStats[stat]!);
                      assignedStats[stat] = 0;
                      bonusesPlusOne[stat] = 0;
                      bonusesPlusTwo[stat] = 0; // Сбрасываем бонусы
                      widget.onAssignedStatsChanged(
                        _mergeStatsAndBonuses(),
                      );
                    });
                  },
                  child: Container(
                    height: 60,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: assignedStats[stat] != 0
                          ? Theme.of(context).colorScheme.tertiary
                          : Theme.of(context).colorScheme.surface,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        (assignedStats[stat]! +
                                bonusesPlusTwo[stat]! +
                                bonusesPlusOne[stat]!)
                            .toString(),
                        style: TextStyle(
                          fontSize: 18,
                          color: assignedStats[stat] != 0
                              ? Theme.of(context).colorScheme.onTertiary
                              : Theme.of(context).colorScheme.onSurface,
                        ),
                      ),
                    ),
                  ),
                );
              },
              onAcceptWithDetails: (details) {
                setState(() {
                  final incomingValue = details.data;
                  final currentValue = assignedStats[stat];

                  if (currentValue != 0) {
                    // Если в текущем таргете уже есть значение, возвращаем его в доступные или другой таргет
                    remainingValues.remove(incomingValue);
                    remainingValues
                        .add(currentValue!); // Возвращаем текущее значение
                  } else {
                    // Если таргет пуст, удаляем incomingValue из доступных
                    remainingValues.remove(incomingValue);
                  }

                  // Присваиваем новое значение таргету
                  assignedStats[stat] = incomingValue;
                  widget.onAssignedStatsChanged(_mergeStatsAndBonuses());
                });
              },
              onWillAcceptWithDetails: (details) => true,
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildBonusTwoCheckboxColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text('+2'),
        SizedBox(
          height: 500,
          width: 50,
          child: ListView(
            shrinkWrap: true,
            children: widget.statNames.map((stat) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: CheckboxListTile(
                  hoverColor: Colors.transparent,
                  contentPadding: EdgeInsets.zero,
                  value: bonusesPlusTwo[stat] != 0,
                  onChanged: (bool? value) {
                    setState(() {
                      final totalBonusesPlusOne = bonusesPlusOne.values
                          .fold<int>(0, (sum, bonus) => sum + bonus);
                      final totalBonusesPlusTwo = bonusesPlusTwo.values
                          .fold<int>(0, (sum, bonus) => sum + bonus);

                      if (value == true) {
                        // Проверяем, можно ли добавить бонус +2
                        if (totalBonusesPlusTwo >= 1) {
                          // Максимум 1 бонус +2
                          return;
                        }
                        if (bonusesPlusOne[stat]! > 0) {
                          return;
                        }
                        if (totalBonusesPlusOne > 1) {
                          // Если есть бонус +1, нельзя добавить бонус +2
                          return;
                        }
                        bonusesPlusTwo[stat] =
                            bonusesPlusTwo[stat]! + 2; // Добавляем бонус
                      } else {
                        // Убираем бонус +2
                        bonusesPlusTwo[stat] = 0;
                      }

                      widget.onAssignedStatsChanged(
                        _mergeStatsAndBonuses(),
                      );
                    });
                  },
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildBonusOneCheckboxColumn() {
    return Column(
      children: [
        const Text('+1'),
        SizedBox(
          height: 500,
          width: 50,
          child: ListView(
            children: widget.statNames.map((stat) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: CheckboxListTile(
                  contentPadding: EdgeInsets.zero,
                  value: bonusesPlusOne[stat] != 0,
                  onChanged: (bool? value) {
                    setState(() {
                      final totalBonusesPlusOne = bonusesPlusOne.values
                          .fold<int>(0, (sum, bonus) => sum + bonus);
                      final totalBonusesPlusTwo = bonusesPlusTwo.values
                          .fold<int>(0, (sum, bonus) => sum + bonus);

                      if (value == true) {
                        // Если пытаемся добавить бонус
                        if (totalBonusesPlusTwo > 0 &&
                            totalBonusesPlusOne >= 1) {
                          // Если уже есть +2, можно добавить только 1 раз +1
                          return;
                        }
                        if (bonusesPlusTwo[stat]! > 0) {
                          return;
                        }
                        if (totalBonusesPlusOne >= 3) {
                          // Максимум 3 раза +1
                          return;
                        }
                        bonusesPlusOne[stat] =
                            bonusesPlusOne[stat]! + 1; // Добавляем бонус
                      } else {
                        // Убираем бонус
                        bonusesPlusOne[stat] = 0;
                      }

                      widget.onAssignedStatsChanged(
                        _mergeStatsAndBonuses(),
                      );
                    });
                  },
                  tileColor: Colors.transparent, // Убираем фоновую подсветку
                  activeColor: Theme.of(context)
                      .colorScheme
                      .primary, // Цвет активного чекбокса
                  checkColor:
                      Theme.of(context).colorScheme.onPrimary, // Цвет галочки
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  /// Объединяет основные значения и бонусы в один Map
  Map<Attributes, int> _mergeStatsAndBonuses() {
    return assignedStats.map(
      (stat, value) => MapEntry(stat,
          value + (bonusesPlusTwo[stat] ?? 0) + (bonusesPlusOne[stat] ?? 0)),
    );
  }

  Widget _buildDraggableBox(int value, {required bool isDragging}) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: isDragging
            ? Theme.of(context).colorScheme.tertiary.withOpacity(0.8)
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
