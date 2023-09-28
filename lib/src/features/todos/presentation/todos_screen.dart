import 'package:flutter/material.dart';
import 'package:riverpod_app_template/src/l10n/string_hardcoded.dart';

import 'todos_list.dart';

class TodosScreen extends StatelessWidget {
  /// Constructs a [TodosScreen]
  const TodosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Todos Screen'.hardcoded)),
        body: const TodosList());
  }
}
