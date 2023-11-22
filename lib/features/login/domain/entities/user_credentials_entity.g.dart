// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_credentials_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserCredentialsEntity _$UserCredentialsEntityFromJson(
        Map<String, dynamic> json) =>
    UserCredentialsEntity(
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$UserCredentialsEntityToJson(
        UserCredentialsEntity instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };
