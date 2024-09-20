import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CreationSummary extends StatefulWidget {
  const CreationSummary({super.key});

  @override
  State<CreationSummary> createState() => CreationSummaryState();
}

class CreationSummaryState extends State<CreationSummary> {
  String selectedRace = '';

  void _onBackButtonTap() {
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Summary"),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: _onBackButtonTap,
              child: const Text('Back'),
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
