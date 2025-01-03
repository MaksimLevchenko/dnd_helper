import 'package:dnd_helper_flutter/app/character_sheet/character_sheet.dart';
import 'package:dnd_helper_flutter/app/character_sheets_list/character_sheet_list.dart';
import 'package:dnd_helper_flutter/app/creation/creation_attributes/creation_attributes.dart';
import 'package:dnd_helper_flutter/app/creation/creation_background/creation_background.dart';
import 'package:dnd_helper_flutter/app/creation/creation_class_page/creation_class.dart';
import 'package:dnd_helper_flutter/app/creation/creation_personal/creation_personal.dart';
import 'package:dnd_helper_flutter/app/creation/creation_race_page/creation_race.dart';
import 'package:dnd_helper_flutter/app/creation/creation_summary.dart';
import 'package:dnd_helper_flutter/app/error_page/error_page.dart';
import 'package:dnd_helper_flutter/app/master/master_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

@Riverpod(keepAlive: true)
GoRouter router(Ref ref) {
  final router = GoRouter(
    navigatorKey: GlobalKey<NavigatorState>(debugLabel: 'dndRouterKey'),
    routes: <GoRoute>[
      GoRoute(
        path: '/creation_class',
        builder: (context, state) => const CreationClass(),
      ),
      GoRoute(
        path: '/creation_race',
        builder: (context, state) => const CreationRace(),
      ),
      GoRoute(
        path: '/creation_background',
        builder: (context, state) => const CreationBackground(),
      ),
      GoRoute(
        path: '/creation_attributes',
        builder: (context, state) => const CreationAttributes(),
      ),
      GoRoute(
        path: '/creation_personal',
        builder: (context, state) => const CreationPersonal(),
      ),
      GoRoute(
        path: '/creation_summary',
        builder: (context, state) => const CreationSummary(),
      ),
      GoRoute(
        path: '/characters',
        builder: (context, state) => const CharacterSheetList(),
      ),
      GoRoute(
        path: '/master_page',
        builder: (context, state) => const MasterPage(),
      ),
      GoRoute(
        path: '/error',
        builder: (context, state) {
          return const ErrorPage();
        },
      ),
      GoRoute(
        path: '/character/:id',
        name: 'characterSheet',
        // redirect: (context, state) {
        //   final parameters = state.pathParameters;
        //   final int? id = int.tryParse(parameters['id']!);
        //   if (id == null) {
        //     return '/error';
        //   }
        //   return null;
        // },
        builder: (context, state) {
          final parameters = state.pathParameters;
          final String id = parameters['id']!;
          return CharacterSheet(characterId: id);
        },
      ),
    ],
    // TODO add auth
    errorBuilder: (context, state) {
      return const ErrorPage();
    },
    initialLocation: '/characters',
  );

  ref.onDispose(router.dispose); // always clean up after yourselves (:

  return router;
}
