import 'package:freezed_annotation/freezed_annotation.dart';
import '../../core/domain/common_failure.dart';
import '../../core/domain/tv_show.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  const SearchState._();

  const factory SearchState.initial() = _Initial;
  const factory SearchState.loading() = _Loading;
  const factory SearchState.data({required List<TvShow> tvShows}) = _Data;
  const factory SearchState.error({required CommonFailure failure}) = _Error;
}
