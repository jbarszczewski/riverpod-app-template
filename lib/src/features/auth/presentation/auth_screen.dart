import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app_template/src/l10n/string_hardcoded.dart';

import '../data/fake_auth_repository.dart';
import 'auth_details.dart';
import 'sign_in_form.dart';

class AuthScreen extends ConsumerWidget {
  /// Constructs a [AuthScreen]
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(fakeAuthRepositoryProvider);
    return Scaffold(
      appBar: AppBar(title: Text('Auth Screen'.hardcoded)),
      body: authState.when(
          data: (user) =>
              user != null ? AuthDetails(user: user) : const SignInForm(),
          error: (error, stackTrace) => Text('Error: $error'.hardcoded),
          loading: () => const CircularProgressIndicator()),
    );
  }
}
