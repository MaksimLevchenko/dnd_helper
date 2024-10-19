import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Abilities extends ConsumerWidget {
  const Abilities({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: Theme.of(context).colorScheme.secondary,
      child: Center(
        child: Text(
          'Abilities',
          style: TextStyle(color: Theme.of(context).colorScheme.onSecondary),
        ),
      ),
    );
  }
}
