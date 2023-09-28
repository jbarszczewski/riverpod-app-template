import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/todo.dart';

part 'todos_repository.g.dart';

@Riverpod(keepAlive: true)
class TodosRepository extends _$TodosRepository {
  @override
  List<Todo> build() => List<Todo>.generate(
      12,
      (int index) => Todo(
            id: index,
            title: 'Todo $index',
            isDone: index % 3 == 0,
          ));

  void deleteTodo({required int id}) {
    state.removeWhere((todo) => todo.id == id);
    state = [...state];
  }

  void setTodoState({required int id, required bool isDone}) {
    final index = state.indexWhere((todo) => todo.id == id);
    state[index] = state[index].copyWith(isDone: isDone);
    state = [...state];
  }
}
