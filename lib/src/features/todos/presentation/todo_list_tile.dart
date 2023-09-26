import 'package:flutter/material.dart';

import '../domain/todo.dart';

class TodoListTile extends StatelessWidget {
  final Todo todo;

  final Function(int) onDelete;
  const TodoListTile({Key? key, required this.todo, required this.onDelete})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          Checkbox(value: todo.isDone, onChanged: (_) {}),
          Text(todo.title),
          Text(' {${todo.id}}'),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () => onDelete(todo.id),
          ),
        ],
      ),
    );
  }
}
