import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'todos_list.dart';

class TodosScreen extends ConsumerWidget {
  /// Constructs a [TodosScreen]
  const TodosScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(title: const Text('Todos Screen')),
        body: const TodosList());
  }
}
