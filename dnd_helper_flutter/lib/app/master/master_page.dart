import 'package:dnd_helper_flutter/app/master/widgets/calculator/calculator.dart';
import 'package:dnd_helper_flutter/app/master/widgets/statblock.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MasterPage extends StatefulWidget {
  const MasterPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return MasterPageState();
  }
}

class MasterPageState extends State<MasterPage> {
  void _onBackButtonTap() {
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Statblock(),
                      Statblock(),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Calculator(),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: _onBackButtonTap,
              child: const Text('Back'),
            ),
          ),
        ],
      ),
    );
  }
}
