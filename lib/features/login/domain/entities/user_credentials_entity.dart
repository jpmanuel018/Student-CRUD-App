import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_credentials_entity.g.dart';

@JsonSerializable()
class UserCredentialsEntity{

  String username;
  String password;

  UserCredentialsEntity({
    required this.username,
    required this.password
  });

  factory UserCredentialsEntity.fromJson(Map<String, dynamic> json) => _$UserCredentialsEntityFromJson(json);

  Map<String, dynamic> toJson() => _$UserCredentialsEntityToJson(this);
}
