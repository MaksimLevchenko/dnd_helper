import 'package:dnd_helper_flutter/models/class_data/class_data.dart';
import 'package:flutter/material.dart';

class ClassTile extends StatelessWidget {
  final ClassData dndClass;
  final bool isSelected;
  final VoidCallback onTap;
  final double iconSize;

  const ClassTile({
    super.key,
    required this.dndClass,
    required this.iconSize,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // TODO обсудить и вернуть onHover
    return GestureDetector(
      onTap: () => {onTap()},
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: isSelected
                      ? const Color.fromARGB(255, 207, 186, 0)
                      : Colors.transparent,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Image.asset(
                  dndClass.imageLink,
                  fit: BoxFit.contain,
                  frameBuilder:
                      (context, child, frame, wasSynchronouslyLoaded) {
                    if (wasSynchronouslyLoaded) {
                      return child;
                    }
                    return AnimatedOpacity(
                      opacity: frame == null ? 0 : 1,
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeOut,
                      child: child,
                    );
                  },
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Text(
              dndClass.name,
            ),
          ),
        ],
      ),
    );
  }
}
