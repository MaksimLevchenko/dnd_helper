import 'package:dnd_helper_flutter/models/character_data/character_data.dart';
import 'package:flutter/material.dart';

class SheetHeader extends StatelessWidget implements PreferredSizeWidget {
  const SheetHeader({
    super.key,
    required this.characterData,
  });

  final CharacterData characterData;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(characterData.characterName),
        Text(
          '${characterData.characterName} - ${characterData.characterClass!.name}',
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(64);
}
