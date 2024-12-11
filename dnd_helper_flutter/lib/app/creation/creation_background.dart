import 'package:dnd_helper_flutter/ui/basic_widgets.dart';
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
            Button(
              onPressed: _onBackButtonTap,
              text: 'Back',
            ),
            const SizedBox(
              height: 16,
            ),
            Button(
              onPressed: _onNextButtonTap,
              text: 'Next',
            ),
          ],
        ),
      ),
    );
  }
}
