import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu.freezed.dart';

/// Menu Entity
@freezed
class Menu with _$Menu {
  /// Empty constructor
  const Menu._();

  /// Named constructor with the properties returned by GET Menu
  const factory Menu({
    /// Menu page
    required int page,
  }) = _Menu;
}
