import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_app_template/src/l10n/string_hardcoded.dart';

import '../../../routing/app_router.dart';

/// The home screen
class HomeScreen extends StatelessWidget {
  /// Constructs a [HomeScreen]
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
        appBar: AppBar(title: Text('Home Screen'.hardcoded), actions: [
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () => context.pushNamed(AppRoute.auth.name),
          ),
        ]),
        body: Center(
          child: ElevatedButton(
            onPressed: () => context.pushNamed(AppRoute.todos.name),
            child: Text(l10n.goTo("Todos".hardcoded)),
          ),
        ));
  }
}
