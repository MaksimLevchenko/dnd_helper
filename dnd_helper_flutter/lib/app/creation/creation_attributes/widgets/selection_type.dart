import 'package:dnd_helper_flutter/app/creation/creation_attributes/state/attributes_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelectionType extends ConsumerWidget {
  const SelectionType({super.key, required this.type});
  final SelectType type;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          ref.read(attributesStateProvider.notifier).changeType(type);
        },
        child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              border:
                  Border.all(color: Theme.of(context).colorScheme.secondary),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(type.toString().split('.').last)),
      ),
    );
  }
}
