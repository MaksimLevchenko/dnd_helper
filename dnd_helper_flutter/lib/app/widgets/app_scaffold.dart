import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  final Widget body;

  const AppScaffold({
    super.key,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('D&D Helper'),
      ),
      body: body,
    );
  }
}
