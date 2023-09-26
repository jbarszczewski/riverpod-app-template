// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todos_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getTodosHash() => r'14ee4b517e46f3e093c42dbe20d5ff0fd346175e';

/// See also [getTodos].
@ProviderFor(getTodos)
final getTodosProvider = AutoDisposeFutureProvider<List<Todo>>.internal(
  getTodos,
  name: r'getTodosProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getTodosHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetTodosRef = AutoDisposeFutureProviderRef<List<Todo>>;
String _$todosRepositoryHash() => r'c83a78c5cf63f562ccd78edfb5bcb76f587fecce';

/// See also [todosRepository].
@ProviderFor(todosRepository)
final todosRepositoryProvider = AutoDisposeProvider<TodosRepository>.internal(
  todosRepository,
  name: r'todosRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$todosRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TodosRepositoryRef = AutoDisposeProviderRef<TodosRepository>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
