import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CreationRace extends StatefulWidget {
  const CreationRace({super.key});

  @override
  State<CreationRace> createState() => CreationRaceState();
}

class CreationRaceState extends State<CreationRace> {
  String selectedRace = '';

  void _onNextButtonTap() {
    context.push('/creation_attributes');
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
            const Text("Race"),
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
