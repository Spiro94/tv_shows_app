import 'package:freezed_annotation/freezed_annotation.dart';
import '../../core/domain/common_failure.dart';
import '../../core/domain/tv_show.dart';

part 'home_series_state.freezed.dart';

@freezed
class HomeSeriesState with _$HomeSeriesState {
  const HomeSeriesState._();

  const factory HomeSeriesState.initial({required List<TvShow> tvShows}) =
      _Initial;
  const factory HomeSeriesState.loading({required List<TvShow> tvShows}) =
      _Loading;
  const factory HomeSeriesState.data(
      {required List<TvShow> tvShows, required bool hasMore}) = _Data;
  const factory HomeSeriesState.error(
      {required CommonFailure failure, required List<TvShow> tvShows}) = _Error;
}
