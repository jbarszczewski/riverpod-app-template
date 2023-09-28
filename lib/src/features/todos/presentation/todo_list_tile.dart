import 'package:flutter/material.dart';

import '../domain/todo.dart';

class TodoListTile extends StatelessWidget {
  final Todo todo;

  final Function(int) onDelete;
  final Function(int, bool) onToggle;
  const TodoListTile(
      {Key? key,
      required this.todo,
      required this.onToggle,
      required this.onDelete})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          Checkbox(
              value: todo.isDone,
              onChanged: (value) => onToggle(todo.id, value ?? false)),
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
