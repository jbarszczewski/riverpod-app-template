import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app_template/src/features/todos/data/todos_repository.dart';
import 'package:riverpod_app_template/src/features/todos/presentation/todo_list_tile.dart';
import 'package:riverpod_app_template/src/features/todos/presentation/todos_list_controller.dart';

class TodosList extends ConsumerWidget {
  const TodosList({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todos = ref.watch(getTodosProvider);

    return todos.when(
      data: (todos) {
        return ListView.builder(
            itemCount: todos.length,
            itemBuilder: (context, index) {
              return TodoListTile(
                  todo: todos[index],
                  onDelete: (int id) {
                    ref
                        .read(todosListControllerProvider.notifier)
                        .deleteTodo(id);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Delete for $index pressed!'),
                    ));
                  });
            });
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Center(
        child: Text('Error: $error'),
      ),
    );
  }
}
