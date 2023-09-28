import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app_template/src/utils/in_memory_store.dart';
import 'package:uuid/uuid.dart';

import '../domain/user.dart';

final fakeAuthRepositoryProvider = Provider<FakeAuthRepository>((ref) {
  final auth = FakeAuthRepository();
  ref.onDispose(() => auth.dispose());
  return auth;
});

final fakeAuthStateChangesProvider = StreamProvider.autoDispose<User?>((ref) {
  final authRepository = ref.watch(fakeAuthRepositoryProvider);
  return authRepository.authStateChanges();
});

class FakeAuthRepository {
  final _authState = InMemoryStore<User?>(null);

  User? get currentUser => _authState.value;
  Stream<User?> authStateChanges() => _authState.stream;

  void dispose() => _authState.close();

  Future<void> signInAnonymously() async {
    await Future.delayed(const Duration(seconds: 3));
    _authState.value = User(id: const Uuid().v4(), email: 'no@email.com');
  }

  Future<void> signOut() async {
    _authState.value = null;
  }
}
