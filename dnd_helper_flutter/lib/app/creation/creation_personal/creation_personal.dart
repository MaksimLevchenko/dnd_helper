import 'package:dnd_helper_flutter/ui/basic_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class CreationPersonal extends ConsumerWidget {
  const CreationPersonal({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final  nameController = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            MultilineTextField(controller: nameController, labelText: 'Имя'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const ToBackPageButton(),
                const Gap(10),
                Button(
                  onPressed: () {
                    context.push('/creation_summary');
                  },
                  text: 'Next',
                ),
              ],
            ),
            const Gap(16),
          ],
        ),
      ),
    );
  }
}
