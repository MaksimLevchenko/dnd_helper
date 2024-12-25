part of '../basic_widgets.dart';

class MultilineTextField extends StatefulWidget {
  const MultilineTextField({
    super.key,
    this.labelText,
    required this.controller,
    this.onEditingComplete,
    this.onChanged,
    this.enabled = true,
    this.keyboardType = TextInputType.multiline,
    this.inputFormatters,
  });

  final String? labelText;
  final TextEditingController controller; // Добавлено
  final Function(String)? onEditingComplete;
  final Function(String)? onChanged;
  final bool enabled;
  final TextInputType keyboardType;
  final List<TextInputFormatter>? inputFormatters;

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
          keyboardType: widget.keyboardType,
          inputFormatters: widget.inputFormatters,
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
