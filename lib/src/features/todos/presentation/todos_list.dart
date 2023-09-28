import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/todos_repository.dart';
import 'todo_list_tile.dart';

class TodosList extends ConsumerWidget {
  const TodosList({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todos = ref.watch(todosRepositoryProvider);
    return ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return TodoListTile(
              todo: todos[index],
              onToggle: (int id, bool isDone) => ref
                  .read(todosRepositoryProvider.notifier)
                  .setTodoState(id: id, isDone: isDone),
              onDelete: (int id) {
                ref.read(todosRepositoryProvider.notifier).deleteTodo(id: id);
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Delete for $index pressed!'),
                ));
              });
        });
  }
}
