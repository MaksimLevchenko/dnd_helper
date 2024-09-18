import 'package:dnd_helper_flutter/app/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

class CharacterSheet extends StatelessWidget {
  final int sheetId;
  const CharacterSheet({
    required this.sheetId,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppScaffold(body: Text('HUY $sheetId'));
  }
}
