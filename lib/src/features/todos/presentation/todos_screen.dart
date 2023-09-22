import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../routing/app_router.dart';
import 'todo_list_tile.dart';

class TodosScreen extends StatelessWidget {
  /// Constructs a [TodosScreen]
  const TodosScreen({super.key});

  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      appBar: AppBar(title: const Text('Todos Screen')),
      body: Center(
        child: ListView(
          children: [
            for (var i = 0; i < 10; i++)
              TodoListTile(
                title: 'Todo $i',
                onTap: () => context.pushNamed(
                  AppRoute.todos.name
                ),
              ),
          ],
        ),
      ),
    );
  }
}
