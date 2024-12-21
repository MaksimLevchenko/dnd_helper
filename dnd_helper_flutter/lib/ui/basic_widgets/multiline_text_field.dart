part of '../basic_widgets.dart';

class MultilineTextField extends StatefulWidget {
  const MultilineTextField({super.key, this.labelText, this.controller});

  final String? labelText;
  final TextEditingController? controller; // Добавлено

  @override
  MultilineTextFieldState createState() => MultilineTextFieldState();
}

class MultilineTextFieldState extends State<MultilineTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.5,
        ),
        child: TextField(
          controller: widget.controller,
          keyboardType: TextInputType.multiline,
          maxLines: 10,
          minLines: 1,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: widget.labelText,
          ),
        ),
      ),
    );
  }
}
