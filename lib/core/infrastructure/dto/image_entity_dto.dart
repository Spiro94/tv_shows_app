import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/image_entity.dart';

part 'image_entity_dto.freezed.dart';
part 'image_entity_dto.g.dart';

@freezed
class ImageEntityDTO with _$ImageEntityDTO {
  const ImageEntityDTO._();

  const factory ImageEntityDTO({
    required String medium,
    required String original,
  }) = _ImageEntityDTO;

  /// Generates fromJson and toJson methods
  factory ImageEntityDTO.fromJson(Map<String, dynamic> json) =>
      _$ImageEntityDTOFromJson(json);

  ImageEntity toDomain() => ImageEntity(medium: medium, original: original);
}
