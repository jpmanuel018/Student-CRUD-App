// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_list_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentListEntityImpl _$$StudentListEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$StudentListEntityImpl(
      Id: json['Id'] as int,
      Username: json['Username'] as String?,
      Name: json['Name'] as String?,
      Email: json['Email'] as String?,
      IsActive: json['IsActive'] as bool,
      CreatedDate: json['CreatedDate'] == null
          ? null
          : DateTime.parse(json['CreatedDate'] as String),
      ModifiedDate: json['ModifiedDate'] == null
          ? null
          : DateTime.parse(json['ModifiedDate'] as String),
    );

Map<String, dynamic> _$$StudentListEntityImplToJson(
        _$StudentListEntityImpl instance) =>
    <String, dynamic>{
      'Id': instance.Id,
      'Username': instance.Username,
      'Name': instance.Name,
      'Email': instance.Email,
      'IsActive': instance.IsActive,
      'CreatedDate': instance.CreatedDate?.toIso8601String(),
      'ModifiedDate': instance.ModifiedDate?.toIso8601String(),
    };
