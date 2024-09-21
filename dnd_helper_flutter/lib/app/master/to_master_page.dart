import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ToMasterPage extends StatelessWidget {
  const ToMasterPage({super.key});

  void _onNextButtonTap(BuildContext context) {
    // Проверяем ширину экрана
    double screenWidth = MediaQuery.of(context).size.width;

    context.push('/master_page');
  }

  void _showFunctionUnavailableDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Функция недоступна'),
          content:
              const Text('Эта функция не работает на экранах с малой шириной.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('ОК'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () => _onNextButtonTap(context),
        child: const Text('Перейти на экран мастера'),
      ),
    );
  }
}
