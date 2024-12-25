part of '../basic_widgets.dart';

class MultilineTextField extends StatefulWidget {
  const MultilineTextField({
    super.key,
    this.labelText,
    required this.controller,
    this.onEditingComplete,
    this.onChanged,
    this.enabled = true,
  });

  final String? labelText;
  final TextEditingController controller; // Добавлено
  final Function(String)? onEditingComplete;
  final Function(String)? onChanged;
  final bool enabled;

  @override
  MultilineTextFieldState createState() => MultilineTextFieldState();
}

class MultilineTextFieldState extends State<MultilineTextField> {
  final focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    focusNode.addListener(() {
      if (!focusNode.hasFocus && widget.onEditingComplete != null) {
        widget.onEditingComplete!(widget.controller.text);
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
          focusNode: focusNode,
          keyboardType: TextInputType.multiline,
          maxLines: 10,
          minLines: 1,
          enabled: widget.enabled,
          onChanged: widget.onChanged,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: widget.labelText,
          ),
        ),
      ),
    );
  }
}
