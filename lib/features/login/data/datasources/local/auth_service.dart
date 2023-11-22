import 'package:hive/hive.dart';
import 'package:student_crud_app/core/hive/model/access_token.dart';

class AuthService {
  final String boxName = "authBox";

  Future<Box> get _box async => await Hive.openBox(boxName);

  Future<void> saveToken(AccessToken accessToken) async {
    var box = await _box;
    await box.put("token",accessToken.token);
  }

  Future<String?> getToken() async {
    var box = await _box;
    return box.get("token");
  }
}