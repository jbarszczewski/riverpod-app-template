import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_app_template/src/features/auth/presentation/auth_screen.dart';

import '../features/home/presentation/home_screen.dart';
import '../features/todos/presentation/todos_screen.dart';

part 'app_router.g.dart';

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
        path: '/auth',
        name: AppRoute.auth.name,
        builder: (context, state) => const AuthScreen(),
      ),
      GoRoute(
        path: '/todos',
        name: AppRoute.todos.name,
        builder: (context, state) => const TodosScreen(),
      ),
    ],
  );
}

enum AppRoute { home, auth, todos }
