import 'package:flutter_fb_clean_architecture/app/modules/auth/domain/etities/user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class User with _$User implements UserEntity {
  const factory User({
    required String username,
    required String uid,
    @Default('') String photoUrl,
    required String email,
    required String bio,
    required List followers,
    required List following,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
