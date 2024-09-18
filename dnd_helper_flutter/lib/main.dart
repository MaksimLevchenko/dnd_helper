import 'dart:ui';

import 'package:dnd_helper_flutter/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      child: Consumer(
        builder: (context, ref, child) {
          final router = ref.read(routerProvider);
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'D&D Helper',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
            ),
            scrollBehavior: const MaterialScrollBehavior().copyWith(
              dragDevices: {
                PointerDeviceKind.mouse,
                PointerDeviceKind.touch,
                PointerDeviceKind.stylus,
                PointerDeviceKind.unknown,
              },
              // home: Scaffold(body: ClassDataPage()),
            ),
            routerDelegate: router.routerDelegate,
            routeInformationProvider: router.routeInformationProvider,
            routeInformationParser: router.routeInformationParser,
          );
        },
      ),
    ),
  );
}
