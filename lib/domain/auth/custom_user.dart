import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kantor_tukan/domain/core/value_objects.dart';

part 'custom_user.freezed.dart';

@freezed
abstract class CustomUser with _$CustomUser {
  const factory CustomUser({required UniqueId id}) = _CustomUser;
}
