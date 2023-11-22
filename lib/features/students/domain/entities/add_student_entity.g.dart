// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_student_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddStudentEntityImpl _$$AddStudentEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$AddStudentEntityImpl(
      username: json['username'] as String,
      password: json['password'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$$AddStudentEntityImplToJson(
        _$AddStudentEntityImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'name': instance.name,
      'email': instance.email,
    };
