import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tv_shows_app/core/domain/common_failure.dart';

import '../../core/infrastructure/core_repository.dart';
import 'splash_state.dart';

class SplashNotifier extends StateNotifier<SplashState> {
  SplashNotifier(this._coreRepository) : super(const SplashState.initial());

  final CoreRepository _coreRepository;

  Future<void> checkPinIsSet() async {
    final result = await _coreRepository.checkPinIsSet();

    state =
        result.fold((failure) => SplashState.error(failure: failure), (isSet) {
      if (isSet) {
        return const SplashState.pinSet();
      } else {
        return const SplashState.pinUnset();
      }
    });
  }

  Future<void> setPin(String pin) async {
    final result = await _coreRepository.setPin(pin);

    state =
        result.fold((failure) => SplashState.error(failure: failure), (isSet) {
      if (isSet) {
        return const SplashState.pinSet();
      } else {
        return const SplashState.error(
          failure: CommonFailure.server(
              message: 'Unable to save your PIN', code: 500),
        );
      }
    });
  }
}
