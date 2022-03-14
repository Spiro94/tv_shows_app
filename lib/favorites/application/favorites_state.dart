import 'package:freezed_annotation/freezed_annotation.dart';
import '../../core/domain/common_failure.dart';
import '../../core/domain/tv_show.dart';

part 'favorites_state.freezed.dart';

@freezed
class FavoritesState with _$FavoritesState {
  const FavoritesState._();

  const factory FavoritesState.initial() = _Initial;
  const factory FavoritesState.loading() = _Loading;
  const factory FavoritesState.data({required List<TvShow> tvShows}) = _Data;
  const factory FavoritesState.error({required CommonFailure failure}) = _Error;
}
