import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app_template/src/l10n/string_hardcoded.dart';

import 'auth_controller.dart';

class SignInForm extends ConsumerWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authController = ref.watch(authControllerProvider);
    return Center(
      child: ElevatedButton(
        onPressed: authController.isLoading
            ? null
            : () =>
                ref.read(authControllerProvider.notifier).signInAnonymously(),
        child: authController.isLoading
            ? const CircularProgressIndicator()
            : Text('Sign in'.hardcoded),
      ),
    );
  }
}
