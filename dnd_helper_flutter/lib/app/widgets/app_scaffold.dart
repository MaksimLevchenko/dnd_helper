import 'package:dnd_helper_flutter/app/widgets/sign_in_button.dart';
import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    super.key,
    required this.body,
    this.showLoginButton = true,
  });

  final bool showLoginButton;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('D&D Helper'),
        actions: [
          if (showLoginButton) const SignInButton(),
        ],
      ),
      body: body,
    );
  }
}
