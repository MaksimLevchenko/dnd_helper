import 'package:flutter/material.dart';

class AbilitiesTextField extends StatefulWidget {
  const AbilitiesTextField({super.key});

  @override
  _AbilitiesTextField createState() => _AbilitiesTextField();
}

class _AbilitiesTextField extends State<AbilitiesTextField> {
  final TextEditingController _controller = TextEditingController();
  int currentLines = 1;
  final int _maxLines = 10;

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
          maxLines: _maxLines,
          minLines: 1,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Способности",
          ),
          onChanged: (text) {
            setState(() {
              final lineBreaks = '\n'.allMatches(text).length + 1;
              currentLines = lineBreaks > _maxLines ? _maxLines : lineBreaks;
            });
          },
        ),
      ),
    );
  }
}
