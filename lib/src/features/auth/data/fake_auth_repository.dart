import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../../utils/in_memory_store.dart';
import '../domain/user.dart';

part 'fake_auth_repository.g.dart';

@riverpod
class FakeAuthRepository extends _$FakeAuthRepository {
  final _authState = InMemoryStore<User?>(null);

  @override
  Stream<User?> build() {
    return _authState.stream;
  }

  void dispose() => _authState.close();

  Future<void> signInAnonymously() async {
    await Future.delayed(const Duration(seconds: 2));
    _authState.value = User(id: const Uuid().v4(), email: 'no@email.com');
  }

  Future<void> signOut() async {
    _authState.value = null;
  }
}
