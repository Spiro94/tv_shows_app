import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/domain/common_failure.dart';
import '../../core/domain/episode.dart';

part 'episodes_state.freezed.dart';

@freezed
class EpisodesState with _$EpisodesState {
  const EpisodesState._();

  const factory EpisodesState.initial() = _Initial;
  const factory EpisodesState.loading() = _Loading;
  const factory EpisodesState.data(
      {required Map<int, List<Episode>> episodes}) = _Data;
  const factory EpisodesState.error({required CommonFailure failure}) = _Error;
}
