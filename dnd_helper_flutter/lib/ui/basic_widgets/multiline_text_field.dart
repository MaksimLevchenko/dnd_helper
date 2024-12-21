part of '../basic_widgets.dart';

class MultilineTextField extends StatefulWidget {
  const MultilineTextField({
    super.key,
    this.labelText,
    required this.controller,
    this.onEditingComplete,
  });

  final String? labelText;
  final TextEditingController controller; // Добавлено
  final Function(String)? onEditingComplete;

  @override
  MultilineTextFieldState createState() => MultilineTextFieldState();
}

class MultilineTextFieldState extends State<MultilineTextField> {
  @override
  Widget build(BuildContext context) {
    final focusNode = FocusNode();
    focusNode.addListener(() {
      if (!focusNode.hasFocus) {
        if (widget.onEditingComplete != null) {
          widget.onEditingComplete!(widget.controller.text);
        }
      }
    });
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
