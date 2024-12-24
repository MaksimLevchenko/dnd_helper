// import 'package:dnd_helper_flutter/app/master/to_master_page.dart';
import 'package:dnd_helper_flutter/app/widgets/app_scaffold.dart';
import 'package:dnd_helper_flutter/data/character_repository/character_repository.dart';
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
            ListTile(
              onTap: () {
                context.push('/creation_class');
              },
              title: const Text('Создать персонажа'),
              titleAlignment: ListTileTitleAlignment.center,
            ),
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
                          title: Text('${state[index].characterName}'),
                          trailing: IconButton(
                            icon: const Icon(Icons.close),
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: const Text('Удалить персонажа?'),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          ref
                                              .read(characterRepositoryProvider
                                                  .notifier)
                                              .deleteCharacter(
                                                  state[index].id!);
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text('Да'),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text('Нет'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ),
                    );
                  },
                ),
          ],
        ),
      ),
    );
  }
}
