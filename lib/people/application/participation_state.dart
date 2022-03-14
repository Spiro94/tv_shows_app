import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tv_shows_app/core/domain/tv_show.dart';

import '../../core/domain/common_failure.dart';

part 'participation_state.freezed.dart';

@freezed
class ParticipationState with _$ParticipationState {
  const ParticipationState._();

  const factory ParticipationState.initial() = _Initial;
  const factory ParticipationState.loading() = _Loading;
  const factory ParticipationState.data({required List<TvShow> tvShows}) =
      _Data;
  const factory ParticipationState.error({required CommonFailure failure}) =
      _Error;
}
