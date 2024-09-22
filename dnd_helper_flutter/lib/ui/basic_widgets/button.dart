import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool outlined;
  final bool colored;

  const Button({
    super.key,
    required this.text,
    required this.onTap,
  })  : outlined = false,
        colored = true;

  const Button.outlined({
    super.key,
    required this.text,
    required this.onTap,
  })  : outlined = true,
        colored = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(
        text,
      ),
    );
  }
}
