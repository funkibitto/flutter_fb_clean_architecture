// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      username: json['username'] as String,
      uid: json['uid'] as String,
      photoUrl: json['photoUrl'] as String? ?? '',
      email: json['email'] as String,
      bio: json['bio'] as String,
      followers: json['followers'] as List<dynamic>,
      following: json['following'] as List<dynamic>,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'username': instance.username,
      'uid': instance.uid,
      'photoUrl': instance.photoUrl,
      'email': instance.email,
      'bio': instance.bio,
      'followers': instance.followers,
      'following': instance.following,
    };
