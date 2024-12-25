import 'package:dnd_helper_flutter/models/character_data/character_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Fight extends ConsumerWidget {
  const Fight({super.key, required this.character});
  final CharacterData character;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      color: colorScheme.error,
      child: const Center(
        child: Text(
          'fight',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
