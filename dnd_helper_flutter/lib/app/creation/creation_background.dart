import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CreationBackground extends StatefulWidget {
  const CreationBackground({super.key});

  @override
  State<CreationBackground> createState() => CreationBackgroundState();
}

class CreationBackgroundState extends State<CreationBackground> {
  String selectedRace = '';

  void _onNextButtonTap() {
    context.push('/creation_summary');
  }

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
            const Text("Background"),
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
            ElevatedButton(
              onPressed: _onNextButtonTap,
              child: const Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
