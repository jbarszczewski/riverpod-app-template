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
    print('signInAnonymously');
    final authRepository = ref.read(fakeAuthRepositoryProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(authRepository.signInAnonymously);
    print('signInAnonymously done');
  }

  Future<void> signOut() async {
    print('signOut');
    final authRepository = ref.read(fakeAuthRepositoryProvider);
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(authRepository.signOut);
    print('signOut done');
  }
}
