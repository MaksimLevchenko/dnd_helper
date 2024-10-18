import 'package:dnd_helper_flutter/models/character_data/character_data.dart';
import 'package:flutter/material.dart';

class SheetHeader extends StatelessWidget {
  const SheetHeader({
    super.key,
    required this.characterData,
  });

  final CharacterData characterData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            characterData.characterName,
            style: const TextStyle(fontSize: 16),
          ),
          Text(
            "${characterData.characterRace!.name} - ${characterData.characterClass!.name}",
            style: const TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }
}
