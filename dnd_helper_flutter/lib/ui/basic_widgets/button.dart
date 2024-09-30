import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Text text;
  final VoidCallback onTap;
  final bool outlined;
  final bool colored;
  final ButtonStyle? style;
  const Button({
    super.key,
    required this.text,
    this.style,
    required this.onTap,
  })  : outlined = false,
        colored = true;

  const Button.outlined({
    super.key,
    required this.text,
    this.style,
    required this.onTap,
  })  : outlined = true,
        colored = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: onTap,
        style: style,
        child: text,
      ),
    );
  }
}
