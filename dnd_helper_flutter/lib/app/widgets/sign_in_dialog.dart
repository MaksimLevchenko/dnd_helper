import 'package:dnd_helper_flutter/data/auth_repository/auth_repository.dart';
import 'package:dnd_helper_flutter/ui/basic_widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SignInDialog extends ConsumerStatefulWidget {
  const SignInDialog({super.key});

  @override
  ConsumerState<SignInDialog> createState() => _SignInDialogState();
}

class _SignInDialogState extends ConsumerState<SignInDialog> {
  var mode = SignInMode.signIn;
  final loginController =
      TextEditingController(text: (kDebugMode) ? '1@1.1' : '');
  final passwordController =
      TextEditingController(text: (kDebugMode) ? '111111' : '');
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: AlertDialog(
        title: Text(mode == SignInMode.signIn ? 'Войти' : 'Зарегистрироваться'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: loginController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Пожалуйста, введите email';
                }
                if (!value.contains('@')) {
                  return 'Пожалуйста, введите корректный email';
                }
                return null;
              },
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(labelText: 'Пароль'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Пожалуйста, введите пароль';
                }
                if (value.length < 6) {
                  return 'Пароль должен быть не менее 6 символов';
                }
                return null;
              },
            ),
            if (mode == SignInMode.register)
              TextFormField(
                initialValue: (kDebugMode) ? '111111' : '',
                decoration:
                    const InputDecoration(labelText: 'Повторите пароль'),
                validator: (value) => value == passwordController.text
                    ? null
                    : 'Пароли не совпадают',
              ),
            Button.textButton(
              onPressed: () {
                setState(() {
                  mode = mode == SignInMode.signIn
                      ? SignInMode.register
                      : SignInMode.signIn;
                });
              },
              child: Text(mode == SignInMode.signIn
                  ? 'Или зарегистрироваться'
                  : 'Или войти'),
            ),
          ],
        ),
        actionsAlignment: MainAxisAlignment.center,
        actions: [
          Button(
            onPressed: () {
              context.pop();
            },
            child: const Text('Отмена'),
          ),
          Button(
            onPressed: () async {
              if (!formKey.currentState!.validate()) {
                return;
              }
              if (mode == SignInMode.signIn) {
                final response =
                    await ref.read(authRepositoryProvider.notifier).signIn(
                          loginController.text,
                          passwordController.text,
                        );
                if (!response && context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Неправильный логин или пароль'),
                    ),
                  );
                }
              } else {
                final response =
                    await ref.read(authRepositoryProvider.notifier).signUp(
                          loginController.text,
                          passwordController.text,
                        );
                if (!response && context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Произошла ошибка, попробуйте позже'),
                    ),
                  );
                }
              }
              context.pop();
            },
            child: Text(
                mode == SignInMode.signIn ? 'Войти' : 'Зарегистрироваться'),
          ),
        ],
      ),
    );
  }
}

enum SignInMode {
  signIn,
  register,
}
