import 'package:freezed_annotation/freezed_annotation.dart';

import 'image_entity.dart';

part 'person.freezed.dart';

@freezed
class Person with _$Person {
  const Person._();

  const factory Person({
    required int id,
    required String name,
    required ImageEntity image,
  }) = _Person;
}
