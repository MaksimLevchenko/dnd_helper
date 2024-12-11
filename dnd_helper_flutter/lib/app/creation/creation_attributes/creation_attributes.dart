import 'package:dnd_helper_flutter/ui/basic_widgets.dart';
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
    if (context.canPop()) {
      context.pop();
    } else {
      context.go('/creation_race');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * 0.8,
                minHeight: 10,
              ),
              child: Center(
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisExtent: 150,
                  ),
                  shrinkWrap: true,
                  children: const [
                    Text('Strength'),
                    Text('Dexterity'),
                    Text('Constitution'),
                    Text('Intelligence'),
                    Text('Wisdom'),
                    Text('Charisma'),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(
                  onPressed: _onBackButtonTap,
                  child: const Text('Back'),
                ),
                const SizedBox(
                  height: 16,
                ),
                Button(
                  onPressed: _onNextButtonTap,
                  child: const Text('Next'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
