import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tv_shows_app/core/infrastructure/dto/image_entity_dto.dart';

part 'image_entity.freezed.dart';

@freezed
class ImageEntity with _$ImageEntity {
  const ImageEntity._();

  const factory ImageEntity({
    required String medium,
    required String original,
  }) = _ImageEntity;

  ImageEntityDTO toDTO() => ImageEntityDTO(medium: medium, original: original);
}
