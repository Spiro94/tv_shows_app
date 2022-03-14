import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'image_entity.dart';

part 'episode.freezed.dart';

@freezed
class Episode with _$Episode {
  const Episode._();

  const factory Episode({
    required int id,
    required String name,
    required int season,
    required int number,
    required ImageEntity image,
    required String summary,
  }) = _Episode;
}
