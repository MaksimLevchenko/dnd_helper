part of '../basic_widgets.dart';

Widget toBackPageButton(BuildContext context) {
  return Button(
    onPressed: () {
      context.pop();
    },
    child: const Text('Back'),
  );
}
