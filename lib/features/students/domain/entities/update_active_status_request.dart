import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_active_status_request.g.dart';

@JsonSerializable()
class UpdateActiveStatusRequest{
  int id;
  bool isActive;

  UpdateActiveStatusRequest({
    required this.id,
    required this.isActive
  });

  factory UpdateActiveStatusRequest.fromJson(Map<String, dynamic> json) => _$UpdateActiveStatusRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateActiveStatusRequestToJson(this);

}