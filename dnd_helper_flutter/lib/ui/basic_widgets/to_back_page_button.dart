import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Widget toBackPageButton(BuildContext context) {
  return ElevatedButton(
    onPressed: () {
      context.pop();
    },
    child: const Text('Back'),
  );
}
