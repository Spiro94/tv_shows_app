import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/schedule.dart';

part 'schedule_dto.freezed.dart';
part 'schedule_dto.g.dart';

@freezed
class ScheduleDTO with _$ScheduleDTO {
  const ScheduleDTO._();

  const factory ScheduleDTO({
    required String time,
    required List<String> days,
  }) = _ScheduleDTO;

  /// Generates fromJson and toJson methods
  factory ScheduleDTO.fromJson(Map<String, dynamic> json) =>
      _$ScheduleDTOFromJson(json);

  Schedule toDomain() => Schedule(time: time, days: days);
}
