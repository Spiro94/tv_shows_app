import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tv_shows_app/core/infrastructure/dto/schedule_dto.dart';

part 'schedule.freezed.dart';

@freezed
class Schedule with _$Schedule {
  const Schedule._();

  const factory Schedule({
    required String time,
    required List<String> days,
  }) = _Schedule;

  ScheduleDTO toDTO() => ScheduleDTO(time: time, days: days);
}
