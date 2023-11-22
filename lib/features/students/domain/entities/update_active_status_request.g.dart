// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_active_status_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateActiveStatusRequest _$UpdateActiveStatusRequestFromJson(
        Map<String, dynamic> json) =>
    UpdateActiveStatusRequest(
      id: json['id'] as int,
      isActive: json['isActive'] as bool,
    );

Map<String, dynamic> _$UpdateActiveStatusRequestToJson(
        UpdateActiveStatusRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isActive': instance.isActive,
    };
