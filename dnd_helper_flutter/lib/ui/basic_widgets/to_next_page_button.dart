part of '../basic_widgets.dart';

Widget toNextPageButton(BuildContext context, String route) {
  return Button(
    onPressed: () {
      context.push(route);
    },
    child: const Text('Next Page'),
  );
}
