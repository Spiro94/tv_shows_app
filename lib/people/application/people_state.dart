import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/domain/common_failure.dart';
import '../../core/domain/person.dart';

part 'people_state.freezed.dart';

@freezed
class PeopleState with _$PeopleState {
  const PeopleState._();

  const factory PeopleState.initial() = _Initial;
  const factory PeopleState.loading() = _Loading;
  const factory PeopleState.data({required List<Person> people}) = _Data;
  const factory PeopleState.error({required CommonFailure failure}) = _Error;
}
