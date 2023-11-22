import 'dart:io';

import 'package:dio/dio.dart';
import 'package:student_crud_app/core/resources/data_state.dart';
import 'package:student_crud_app/features/login/data/datasources/local/auth_service.dart';
import 'package:student_crud_app/features/students/data/datasources/remote/student_service.dart';
import 'package:student_crud_app/features/students/domain/entities/add_student_entity.dart';
import 'package:student_crud_app/features/students/domain/entities/student_list_entity.dart';
import 'package:student_crud_app/features/students/domain/repository/student_repository.dart';

class StudentRepositoryImpl implements StudentRepository {

  final StudentService _studentService;
  final AuthService _authService;

  StudentRepositoryImpl(this._studentService, this._authService);

  @override
  Future<DataState<List<StudentListEntity>>> getStudents() async {
    try {
      final token = await _authService.getToken();
      final httpResponse = await _studentService.getStudents(token);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(
            DioException(
                error: httpResponse.response.statusMessage,
                response: httpResponse.response,
                type: DioExceptionType.badResponse,
                requestOptions: httpResponse.response.requestOptions
            )
        );
      }
    } on DioException catch(e) {
      return DataFailed(e);
    }
  }

  @override
  Future<DataState<void>> updateActiveStatus(int? id, bool? isActive) async {
    try {
      final token = await _authService.getToken();
      final Map<String, dynamic> body = {
        "is_active": isActive,
      };
      final httpResponse = await _studentService.updateActiveStatus(token, id, body);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(
            DioException(
                error: httpResponse.response.statusMessage,
                response: httpResponse.response,
                type: DioExceptionType.badResponse,
                requestOptions: httpResponse.response.requestOptions
            )
        );
      }
    } on DioException catch(e) {
      return DataFailed(e);
    }
  }

  @override
  Future<DataState<void>> addStudent(AddStudentEntity? entity) async {
    try {
      final token = await _authService.getToken();
      final Map<String, dynamic> body = {
        "username": entity?.username,
        "password": entity?.password,
        "name": entity?.name,
        "email": entity?.email,
      };
      final httpResponse = await _studentService.addStudent(token, body);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(
            DioException(
                error: httpResponse.response.statusMessage,
                response: httpResponse.response,
                type: DioExceptionType.badResponse,
                requestOptions: httpResponse.response.requestOptions
            )
        );
      }
    } on DioException catch(e) {
      return DataFailed(e);
    }
  }

}