import 'package:freezed_annotation/freezed_annotation.dart';
import '../../core/domain/common_failure.dart';
import '../../core/domain/tv_show.dart';

part 'splash_state.freezed.dart';

@freezed
class SplashState with _$SplashState {
  const SplashState._();

  const factory SplashState.initial() = _Initial;

  const factory SplashState.pinSet() = _PinSet;
  const factory SplashState.pinUnset() = _PinUnSet;
  const factory SplashState.error({required CommonFailure failure}) = _Error;
}
