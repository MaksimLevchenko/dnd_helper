import 'package:dnd_helper_flutter/app/widgets/sign_in_dialog.dart';
import 'package:dnd_helper_flutter/data/auth_repository/auth_repository.dart';
import 'package:dnd_helper_flutter/ui/basic_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignInButton extends ConsumerWidget {
  const SignInButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.read(authRepositoryProvider);
    return ref.watch(authRepositoryProvider).when(
          data: (authState) {
            if (authState.isSuccess) {
              return Button(
                onPressed: () {
                  ref.read(authRepositoryProvider.notifier).signOut();
                },
                child: const Icon(Icons.logout),
              );
            } else {
              return Button(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return const SignInDialog();
                    },
                  );
                },
                child: const Text('Войти'),
              );
            }
          },
          error: (error, stack) => Text('Произошла ошибка $error'),
          loading: () => const CircularProgressIndicator(),
        );
  }
}
