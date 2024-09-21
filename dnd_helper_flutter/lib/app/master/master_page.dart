import 'package:dnd_helper_flutter/app/widgets/statblock.dart';
import 'package:flutter/material.dart';

class MasterPage extends StatefulWidget {
  const MasterPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return MasterPageState();
  }
}

class MasterPageState extends State<MasterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Statblock(),
    );
  }
}
