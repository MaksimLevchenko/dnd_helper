import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Widget toNextPageButton(BuildContext context, String route) {
  return ElevatedButton(
    onPressed: () {
      context.push(route);
    },
    child: const Text('Next Page'),
  );
}
