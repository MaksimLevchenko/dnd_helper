import 'package:dnd_helper_flutter/app/creation/creation_state/creation_state.dart';
import 'package:dnd_helper_flutter/main.dart';
import 'package:dnd_helper_flutter/ui/basic_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class CreationSummary extends ConsumerWidget {
  const CreationSummary({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fields = ref.read(creationStateProvider).toJson();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Summary"),
            ListView.builder(
              shrinkWrap: true,
              itemCount: fields.length,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final key = fields.keys.elementAt(index);
                final value = fields[key];
                return ListTile(
                  title: Text(key), // Отображение имени поля
                  subtitle:
                      Text(value?.toString() ?? 'null'), // Отображение значения
                );
              },
            ),
            const Gap(16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const ToBackPageButton(),
                const Gap(16),
                Button(
                  onPressed: () async {
                    final notifier = ref.read(creationStateProvider.notifier);
                    final newCharacter = await notifier.saveCharacter();

                    if (context.mounted) {
                      GoRouter.of(context).goNamed(
                        'characterSheet',
                        pathParameters: {'id': newCharacter.id!},
                      );
                    }
                  },
                  child: const Text('Save'),
                ),
                const Gap(16),
              ],
            )
          ],
        ),
      ),
    );
  }
}
