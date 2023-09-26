import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_app_template/src/features/todos/data/todos_repository.dart';

part 'todos_list_controller.g.dart';

@riverpod
class TodosListController extends _$TodosListController {
  @override
  FutureOr<void> build() {}

  Future<void> deleteTodo(int id) async {
    final repository = ref.read(todosRepositoryProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => repository.deleteTodo(id: id));
  }
}
