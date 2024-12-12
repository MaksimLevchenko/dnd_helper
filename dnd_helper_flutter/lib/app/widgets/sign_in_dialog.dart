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
        title: Text(mode == SignInMode.signIn ? 'Sign In' : 'Register'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: loginController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter email';
                }
                if (!value.contains('@')) {
                  return 'Please enter valid email';
                }
                return null;
              },
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(labelText: 'Password'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter password';
                }
                if (value.length < 6) {
                  return 'Password must be at least 6 characters long';
                }
                return null;
              },
            ),
            if (mode == SignInMode.register)
              TextFormField(
                initialValue: (kDebugMode) ? '111111' : '',
                decoration: const InputDecoration(labelText: 'Repeat password'),
                validator: (value) => value == passwordController.text
                    ? null
                    : 'Passwords do not match',
              ),
            Button.textButton(
              onPressed: () {
                setState(() {
                  mode = mode == SignInMode.signIn
                      ? SignInMode.register
                      : SignInMode.signIn;
                });
              },
              child: Text(
                  mode == SignInMode.signIn ? 'Or register' : 'Or sign in'),
            ),
          ],
        ),
        actionsAlignment: MainAxisAlignment.center,
        actions: [
          Button(
            onPressed: () {
              context.pop();
            },
            child: const Text('Cancel'),
          ),
          Button(
            onPressed: () {
              if (!formKey.currentState!.validate()) {
                return;
              }
              if (mode == SignInMode.signIn) {
                ref.read(authRepositoryProvider.notifier).signIn(
                      loginController.text,
                      passwordController.text,
                    );
              } else {
                ref.read(authRepositoryProvider.notifier).signUp(
                      loginController.text,
                      passwordController.text,
                    );
              }
              context.pop();
            },
            child: Text(mode == SignInMode.signIn ? 'Sign In' : 'Register'),
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
