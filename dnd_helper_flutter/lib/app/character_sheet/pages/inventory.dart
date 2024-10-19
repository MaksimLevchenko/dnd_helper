import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Inventory extends ConsumerWidget {
  const Inventory({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: Theme.of(context).colorScheme.tertiary,
      child: Center(
        child: Text(
          'Inventory',
          style: TextStyle(color: Theme.of(context).colorScheme.onTertiary),
        ),
      ),
    );
  }
}
