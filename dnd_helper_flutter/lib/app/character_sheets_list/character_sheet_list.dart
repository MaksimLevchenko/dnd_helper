// import 'package:dnd_helper_flutter/app/master/to_master_page.dart';
import 'package:dnd_helper_flutter/app/widgets/app_scaffold.dart';
import 'package:dnd_helper_flutter/data/character_repository/character_repository.dart';
import 'package:dnd_helper_flutter/ui/basic_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class CharacterSheetList extends ConsumerWidget {
  const CharacterSheetList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppScaffold(
      body: Center(
        child: Column(
          children: [
            // const ToMasterPage(),
            const Text("here will be a list of character sheets"),
            ref.watch(characterRepositoryProvider).when(
                  error: (error, stackTrace) {
                    return Text('Error: $error');
                  },
                  loading: () => const CircularProgressIndicator(),
                  data: (state) {
                    if (state.isEmpty) {
                      return const Text('No characters');
                    }
                    return Expanded(
                      child: ListView.builder(
                        itemCount: state.length,
                        itemBuilder: (context, index) => ListTile(
                          onTap: () {
                            GoRouter.of(context).goNamed('characterSheet',
                                pathParameters: {'id': state[index].id!});
                          },
                          title: Text('Sheet ${state[index].characterName}'),
                        ),
                      ),
                    );
                  },
                ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Button(
                onPressed: () {
                  context.push('/creation_class');
                },
                text: 'to creation',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
