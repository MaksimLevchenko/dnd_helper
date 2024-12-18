part of '../basic_widgets.dart';

class MultilineTextField extends StatefulWidget {
  const MultilineTextField({super.key, this.labelText, this.controller});

  final String? labelText;
  final TextEditingController? controller; // Добавлено

  @override
  MultilineTextFieldState createState() => MultilineTextFieldState();
}

class MultilineTextFieldState extends State<MultilineTextField> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.5,
        ),
        child: TextField(
          controller: _controller,
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

  @override
  void dispose() {
    if (widget.controller == null) {
      _controller.dispose();
    }
    super.dispose();
  }
}
