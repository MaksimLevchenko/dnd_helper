import 'package:dnd_helper_flutter/app/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        body: Center(
      child: Column(
        children: [
          const Text("Ooops, page doesn't exist"),
          ElevatedButton(
              onPressed: () {
                context.go('/characters');
              },
              child: const Text('Go home')),
        ],
      ),
    ));
  }
}
