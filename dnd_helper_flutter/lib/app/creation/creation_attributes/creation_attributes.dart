import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CreationAttributes extends StatefulWidget {
  const CreationAttributes({super.key});

  @override
  State<CreationAttributes> createState() => CreationAttributesState();
}

class CreationAttributesState extends State<CreationAttributes> {
  String selectedRace = '';

  void _onNextButtonTap() {
    context.push('/creation_background');
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
            GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                children: const [
                  Text('Strength'),
                  Text('Dexterity'),
                  Text('Constitution'),
                  Text('Intelligence'),
                  Text('Wisdom'),
                  Text('Charisma'),
                ]),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
          ],
        ),
      ),
    );
  }
}
