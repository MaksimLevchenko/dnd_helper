import 'package:dnd_helper_flutter/app/creation/creation_personal/personal_state/personal_state.dart';
import 'package:dnd_helper_flutter/app/creation/creation_state/creation_state.dart';
import 'package:dnd_helper_flutter/ui/basic_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class CreationPersonal extends ConsumerWidget {
  const CreationPersonal({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controllers = ref.watch(personalStateProvider).controllers;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              MultilineTextField(
                controller: controllers['name'],
                labelText: 'Имя',
              ),
              MultilineTextField(
                controller: controllers['weight'],
                labelText: 'Вес',
              ),
              MultilineTextField(
                controller: controllers['height'],
                labelText: 'Рост',
              ),
              MultilineTextField(
                controller: controllers['age'],
                labelText: 'Возраст',
              ),
              MultilineTextField(
                controller: controllers['hairColor'],
                labelText: 'Цвет волос',
              ),
              MultilineTextField(
                controller: controllers['eyeColor'],
                labelText: 'Цвет глаз',
              ),
              MultilineTextField(
                controller: controllers['skinColor'],
                labelText: 'Цвет кожи',
              ),
              MultilineTextField(
                controller: controllers['alliesAndOrganizations'],
                labelText: 'Союзники и организации',
              ),
              MultilineTextField(
                controller: controllers['purpose'],
                labelText: 'Цель',
              ),
              MultilineTextField(
                controller: controllers['ideals'],
                labelText: 'Идеалы',
              ),
              MultilineTextField(
                controller: controllers['bonds'],
                labelText: 'Привязонности',
              ),
              MultilineTextField(
                controller: controllers['flaws'],
                labelText: 'Недостатки',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const ToBackPageButton(),
                  const Gap(10),
                  Button(
                    onPressed: () {
                      ref.read(creationStateProvider.notifier).setPersonal(
                            controllers,
                          );
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
      ),
    );
  }
}
