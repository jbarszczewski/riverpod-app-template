import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../features/todos/presentation/todos_screen.dart';
import '../features/home/presentation/home_screen.dart';

part 'app_router.g.dart';

enum AppRoute { home, todos }

@riverpod
GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: AppRoute.home.name,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/todos',
      name: AppRoute.todos.name,
      builder: (context, state) => const TodosScreen(),
    ),
  ],
);
}