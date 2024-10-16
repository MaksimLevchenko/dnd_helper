import 'package:dnd_helper_flutter/ui/basic_widgets.dart';
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
            Button(
              onPressed: _onBackButtonTap,
              text: 'Back',
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
