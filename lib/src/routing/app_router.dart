import 'package:go_router/go_router.dart';

import '../features/details/details_screen.dart';
import '../features/home/home_screen.dart';

enum AppRoute { home, details }

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: AppRoute.home.name,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/details',
      name: AppRoute.details.name,
      builder: (context, state) => const DetailsScreen(),
    ),
  ],
);
