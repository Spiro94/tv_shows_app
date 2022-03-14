import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/shared/providers.dart';
import '../application/auth_notifier.dart';
import '../application/auth_state.dart';

final authNotifierProvider =
    StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  return AuthNotifier(ref.watch(coreRepositoryProvider));
});
