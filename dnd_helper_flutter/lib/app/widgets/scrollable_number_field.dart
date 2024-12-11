import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ScrollableNumberField extends StatefulWidget {
  final TextEditingController controller;
  final TextAlign textAlign;
  final InputDecoration decoration;
  final double height;
  final double width;

  const ScrollableNumberField({
    super.key,
    required this.controller,
    required this.height,
    required this.width,
    this.textAlign = TextAlign.start,
    this.decoration = const InputDecoration(),
  });

  @override
  ScrollableNumberFieldState createState() => ScrollableNumberFieldState();
}

class ScrollableNumberFieldState extends State<ScrollableNumberField> {
  late int _value;

  @override
  void initState() {
    super.initState();
    _value = int.tryParse(widget.controller.text) ?? 0;
    widget.controller.addListener(_updateValueFromController);
  }

  void _updateValueFromController() {
    if (widget.controller.text.isEmpty) {
      return;
    }

    final newValue = int.tryParse(widget.controller.text);
    if (newValue != null && newValue >= 0 && newValue <= 999) {
      setState(() {
        _value = newValue;
      });
    } else {
      widget.controller.text = _value.toString();
      widget.controller.selection = TextSelection.fromPosition(
          TextPosition(offset: widget.controller.text.length));
    }
  }

  void _updateValue(int delta) {
    setState(() {
      _value = (_value + delta).clamp(0, 999);
      widget.controller.text = _value.toString();
      widget.controller.selection = TextSelection.fromPosition(
          TextPosition(offset: widget.controller.text.length));
    });
  }

  @override
  void dispose() {
    widget.controller.removeListener(_updateValueFromController);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Listener(
          onPointerSignal: (event) {
            if (event is PointerScrollEvent) {
              _updateValue(event.scrollDelta.dy < 0 ? 1 : -1);
            }
          },
          child: SizedBox(
            height: widget.height,
            width: widget.width,
            child: TextField(
              controller: widget.controller,
              textAlign: widget.textAlign,
              decoration: widget.decoration,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
          ),
        ),
      ],
    );
  }
}
