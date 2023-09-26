import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/todo.dart';

part 'todos_repository.g.dart';

@riverpod
Future<List<Todo>> getTodos(GetTodosRef ref) {
  return ref.watch(todosRepositoryProvider).getTodos();
}

@riverpod
TodosRepository todosRepository(TodosRepositoryRef ref) => TodosRepository();

class TodosRepository {
  deleteTodo({required int id}) {}

  Future<List<Todo>> getTodos() async {
    final List<Todo> todos = List<Todo>.generate(
        10,
        (int index) => Todo(
              id: index,
              title: 'Todo $index',
              isDone: index % 3 == 0,
            ));

    return todos;
  }
}
