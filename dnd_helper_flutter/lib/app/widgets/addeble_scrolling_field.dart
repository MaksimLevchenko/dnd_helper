import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dnd_helper_flutter/app/widgets/scrollable_number_field.dart';

class AddebleScrollingField extends StatefulWidget {
  final TextEditingController controller;
  final double height;
  final double width;
  final TextAlign textAlign;
  final InputDecoration decoration;

  AddebleScrollingField({
    super.key,
    required this.controller,
    required this.height,
    required this.width,
    this.textAlign = TextAlign.start,
    this.decoration = const InputDecoration(),
  });

  @override
  State<StatefulWidget> createState() {
    return AddebleScrollingFieldState();
  }
}

class AddebleScrollingFieldState extends State<AddebleScrollingField> {
  final TextEditingController plusController = TextEditingController();
  final TextEditingController minusController = TextEditingController();

  void _updateValue(int change) {
    final currentValue = int.tryParse(widget.controller.text) ?? 0;
    widget.controller.text = (currentValue + change).toString();
  }

  void _applyPlus() {
    final value = int.tryParse(plusController.text) ?? 0;
    _updateValue(value);
    plusController.clear();
  }

  void _applyMinus() {
    final value = int.tryParse(minusController.text) ?? 0;
    _updateValue(-value);
    minusController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ScrollableNumberField(
          height: 50,
          width: 80,
          controller: widget.controller,
          textAlign: TextAlign.center,
          decoration: widget.decoration,
        ),
        Row(
          children: [
            SizedBox(
              height: 50,
              width: 39,
              child: TextField(
                controller: minusController,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: "-",
                  border: OutlineInputBorder(),
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(3),
                ],
                onSubmitted: (value) => _applyMinus(),
              ),
            ),
            const SizedBox(width: 2),
            SizedBox(
              height: 50,
              width: 39,
              child: TextField(
                controller: plusController,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: "+",
                  border: OutlineInputBorder(),
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(3),
                ],
                onSubmitted: (value) => _applyPlus(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
