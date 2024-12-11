part of '../basic_widgets.dart';

class Button extends StatelessWidget {
  final String? text;
  final Widget? child;
  final VoidCallback onPressed;
  final bool outlined;
  final bool colored;

  const Button({
    super.key,
    this.text,
    this.child,
    required this.onPressed,
  })  : outlined = false,
        colored = true,
        assert(text != null || child != null);

  const Button.outlined({
    super.key,
    this.text,
    this.child,
    required this.onPressed,
  })  : outlined = true,
        colored = false,
        assert(text != null || child != null);

  const Button.textButton({
    super.key,
    this.text,
    this.child,
    required this.onPressed,
  })  : outlined = false,
        colored = false,
        assert(text != null || child != null);

  @override
  Widget build(BuildContext context) {
    final buttonChild = child ?? Text(text!);
    if (outlined == false && colored == false) {
      return TextButton(
        onPressed: onPressed,
        child: buttonChild,
      );
    } else if (outlined == true && colored == false) {
      return OutlinedButton(
        onPressed: onPressed,
        child: buttonChild,
      );
    } else {
      return ElevatedButton(
        onPressed: onPressed,
        child: buttonChild,
      );
    }
  }
}
