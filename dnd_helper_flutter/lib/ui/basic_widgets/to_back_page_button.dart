part of '../basic_widgets.dart';

class ToBackPageButton extends StatelessWidget {
  const ToBackPageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Button(
      onPressed: () {
        context.pop();
      },
      child: const Text('Back'),
    );
  }
}
