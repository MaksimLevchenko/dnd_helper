import 'package:dnd_helper_flutter/app/master/to_master_page.dart';
import 'package:dnd_helper_flutter/app/widgets/app_scaffold.dart';
import 'package:dnd_helper_flutter/ui/basic_widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CharacterSheetList extends StatelessWidget {
  const CharacterSheetList({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Center(
        child: Column(
          children: [
            const ToMasterPage(),
            const Text("here will be a list of character sheets"),
            Button(
                onTap: () {
                  GoRouter.of(context).go('/character/1');
                },
                text: const Text('Sheet')),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                  onPressed: () {
                    context.push('/creation_class');
                  },
                  child: const Center(child: Text('sam hui'))),
            ),
          ],
        ),
      ),
    );
  }
}
