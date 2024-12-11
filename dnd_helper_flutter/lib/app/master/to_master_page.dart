import 'package:dnd_helper_flutter/ui/basic_widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

//TODO почему это здесь, должно быть в character sheets list/widgets по сути
class ToMasterPage extends StatelessWidget {
  const ToMasterPage({super.key});

  void _onNextButtonTap(BuildContext context) {
    context.push('/master_page');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Button(
        onPressed: () => _onNextButtonTap(context),
        child: const Text('Перейти на экран мастера'),
      ),
    );
  }
}
