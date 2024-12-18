import 'dart:developer';

import 'package:dnd_helper_flutter/app/character_sheet/character_sheet.dart';
import 'package:dnd_helper_flutter/app/creation/creation_attributes/state/attributes_state.dart';
import 'package:dnd_helper_flutter/app/creation/creation_attributes/widgets/default_selection.dart';
import 'package:dnd_helper_flutter/app/creation/creation_attributes/widgets/default_selection_state/default_selection_state.dart';
import 'package:dnd_helper_flutter/app/creation/creation_attributes/widgets/selection_type.dart';
import 'package:dnd_helper_flutter/app/creation/creation_state/creation_state.dart';
import 'package:dnd_helper_flutter/domain/build_context_extension.dart';
import 'package:dnd_helper_flutter/models/enums/attributes.dart';
import 'package:dnd_helper_flutter/ui/basic_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class CreationAttributes extends ConsumerWidget {
  const CreationAttributes({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = (ref.watch(attributesStateProvider));
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: context.isMobile
                ? MediaQuery.of(context).size.width
                : MediaQuery.of(context).size.width * 0.6,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Gap(32),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SelectionType(type: SelectType.defaultType),
                  SelectionType(type: SelectType.random),
                  SelectionType(type: SelectType.purchase),
                  SelectionType(type: SelectType.byHand),
                ],
              ),
              const Gap(8),
              const Divider(),
              const Gap(8),
              Text(state.selectionType.toShortString()),
              if (state.selectionType == SelectType.defaultType)
                Expanded(
                  child: DefaultSelection(
                    statNames: const [
                      Attributes.strength,
                      Attributes.dexterity,
                      Attributes.constitution,
                      Attributes.intelligence,
                      Attributes.wisdom,
                      Attributes.charisma,
                    ],
                    statValues: const [15, 14, 13, 12, 10, 8],
                    onAssignedStatsChanged: (assignedStats) {
                      (ref
                          .read(attributesStateProvider.notifier)
                          .changeAttributes(assignedStats));
                    },
                  ),
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const ToBackPageButton(),
                  const Gap(10),
                  Visibility(
                    visible: !state.attributes.containsValue(0) &&
                        state.attributes.isNotEmpty,
                    child: Button(
                      onPressed: () {
                        ref
                            .read(creationStateProvider.notifier)
                            .setAttributes(state.attributes);
                        log(state.attributes.toString());
                        context.push('/creation_background');
                      },
                      child: const Text('Next'),
                    ),
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
