import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app_template/src/features/auth/domain/user.dart';
import 'package:riverpod_app_template/src/features/auth/presentation/auth_controller.dart';
import 'package:riverpod_app_template/src/l10n/string_hardcoded.dart';

class AuthDetails extends ConsumerWidget {
  final User user;

  const AuthDetails({super.key, required this.user});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authController =
        ref.watch(authControllerProvider); // handles the auth (user) state
    return Center(
        child: Column(
      children: [
        Text('User Id: ${user.id}'.hardcoded),
        Text('User Email: ${user.email}'.hardcoded),
        ElevatedButton(
            onPressed: authController.isLoading
                ? null
                : () => ref.read(authControllerProvider.notifier).signOut(),
            child: Text('Sign out'.hardcoded)),
      ],
    ));
  }
}
