import 'package:dnd_helper_flutter/app/character_sheet/character_sheet.dart';
import 'package:dnd_helper_flutter/app/character_sheet_list/character_sheet_list.dart';
import 'package:dnd_helper_flutter/app/error_page/error_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

@Riverpod(keepAlive: true)
GoRouter router(RouterRef ref) {
  final router = GoRouter(
    navigatorKey: GlobalKey<NavigatorState>(debugLabel: 'dndRouterKey'),
    routes: <GoRoute>[
      GoRoute(
        path: '/characters',
        builder: (context, state) => const CharacterSheetList(),
      ),
      GoRoute(
        path: '/error',
        builder: (context, state) {
          return const ErrorPage();
        },
      ),
      GoRoute(
        path: '/character/:id',
        redirect: (context, state) {
          final parameters = state.pathParameters;
          final int? id = int.tryParse(parameters['id']!);
          if (id == null) {
            return '/error';
          }
          return null;
        },
        builder: (context, state) {
          final parameters = state.pathParameters;
          final int id = int.tryParse(parameters['id']!)!;
          return CharacterSheet(sheetId: id);
        },
      ),
    ],
    // refreshListenable: ,
    // TODO add auth
    errorBuilder: (context, state) {
      return const ErrorPage();
    },
    initialLocation: '/characters',
  );

  ref.onDispose(router.dispose); // always clean up after yourselves (:

  return router;
}
