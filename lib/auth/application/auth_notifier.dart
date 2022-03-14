import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/infrastructure/core_repository.dart';
import 'auth_state.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier(this._coreRepository) : super(const AuthState.unauthenticated());

  final CoreRepository _coreRepository;

  Future<void> authenticate(String pin) async {
    final result = await _coreRepository.authenticate(pin);

    state = result.fold(
      (failure) => AuthState.error(failure: failure),
      (authenticated) => authenticated
          ? const AuthState.authenticated()
          : const AuthState.unauthenticated(),
    );
  }
}
