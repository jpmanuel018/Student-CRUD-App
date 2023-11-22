import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:student_crud_app/features/login/domain/entities/user_credentials_entity.dart';

part 'login_service.g.dart';

@RestApi(baseUrl: "https://svc.devsolutions.sds.dev/")
abstract class LoginService {
  factory LoginService(Dio dio) = _LoginService;

  @POST("api/auth/signin")
  Future<HttpResponse<String>> userLogin({
    @Body() UserCredentialsEntity? userCredentialsEntity
  });
}