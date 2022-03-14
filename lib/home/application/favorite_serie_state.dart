import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/domain/common_failure.dart';

part 'favorite_serie_state.freezed.dart';

@freezed
class FavoriteSerieState with _$FavoriteSerieState {
  const FavoriteSerieState._();

  const factory FavoriteSerieState.initial() = _Initial;
  const factory FavoriteSerieState.loading() = _Loading;
  const factory FavoriteSerieState.data({required bool isFavorite}) = _Data;
  const factory FavoriteSerieState.error({required CommonFailure failure}) =
      _Error;
}
