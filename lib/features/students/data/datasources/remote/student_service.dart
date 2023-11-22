import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:student_crud_app/features/students/domain/entities/student_list_entity.dart';

part 'student_service.g.dart';

@RestApi(baseUrl: "https://svc.devsolutions.sds.dev/")
abstract class StudentService {
  factory StudentService(Dio dio) = _StudentService;
  
  @GET("api/users")
  Future<HttpResponse<List<StudentListEntity>>> getStudents(
      @Header("Authorization") String? token
      );

  @PUT("api/users/change/status/{id}")
  Future<HttpResponse<void>> updateActiveStatus(
      @Header("Authorization") String? token,
      @Path("id") int? id,
      @Body() Map<String, dynamic> body
      );

  @POST("api/users")
  Future<HttpResponse<void>> addStudent(
      @Header("Authorization") String? token,
      @Body() Map<String, dynamic> body
      );
}