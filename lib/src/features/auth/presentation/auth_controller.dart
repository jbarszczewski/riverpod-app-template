import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/fake_auth_repository.dart';

part 'auth_controller.g.dart';

@riverpod
class AuthController extends _$AuthController {
  @override
  FutureOr<void> build() {
    // no-op
  }

  Future<void> signInAnonymously() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
        ref.read(fakeAuthRepositoryProvider.notifier).signInAnonymously);
  }

  Future<void> signOut() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(
        ref.read(fakeAuthRepositoryProvider.notifier).signOut);
  }
}
