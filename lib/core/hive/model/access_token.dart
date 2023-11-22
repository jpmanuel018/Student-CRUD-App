import 'package:hive/hive.dart';

part 'access_token.g.dart';

@HiveType(typeId: 1)
class AccessToken {
  @HiveField(0)
  final String token;

  AccessToken({required this.token});
}