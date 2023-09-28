import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../utils/in_memory_store.dart';
import '../domain/user.dart';

part 'auth_repository.g.dart';

@Riverpod(keepAlive: true)
class AuthRepository extends _$AuthRepository {
  final _authState = InMemoryStore<User?>(null);
  Stream<User?> authStateChanges() => _authState.stream;

  @override
  Stream<User?> build() {
    return _authState.stream;
  }

  void dispose() => _authState.close();

  Future<void> signInAnonymously() async {
    await Future.delayed(const Duration(seconds: 3));
    _authState.value = const User(
      id: '123',
      email: 'no@email.com',
    );
  }

  Future<void> signOut() async {
    _authState.value = null;
  }
}
