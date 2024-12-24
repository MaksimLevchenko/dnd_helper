import 'dart:ui';

import 'package:dnd_helper_flutter/router/router.dart';
import 'package:encrypt_shared_preferences/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  GoRouter.optionURLReflectsImperativeAPIs = true;
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await EncryptedSharedPreferences.initialize('1234567890qwerty');

  runApp(
    ProviderScope(
      child: Consumer(
        builder: (context, ref, child) {
          final router = ref.read(routerProvider);
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'D&D Helper',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                  seedColor: const Color.fromARGB(255, 238, 219, 160)),
            ),
            scrollBehavior: const MaterialScrollBehavior().copyWith(
              dragDevices: {
                //убрал mouse, для прокрутки колёсико есть
                PointerDeviceKind.touch,
                PointerDeviceKind.stylus,
                PointerDeviceKind.unknown,
              },
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
