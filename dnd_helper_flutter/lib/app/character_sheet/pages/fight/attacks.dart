import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Attacks extends ConsumerWidget {
  const Attacks({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            'Attack $index',
            style: TextStyle(
              color: Theme.of(context).colorScheme.onError,
            ),
          ),
          subtitle: Text('Attack $index description'),
        );
      },
    );
  }
}
