part of '../basic_widgets.dart';

class DividerWithText extends StatelessWidget {
  const DividerWithText({super.key, required this.text});
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: text != null,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 1,
                color: Colors.black,
              ),
            ),
          ),
          if (text != null)
            Text(
              text!,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20),
            ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 1,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
