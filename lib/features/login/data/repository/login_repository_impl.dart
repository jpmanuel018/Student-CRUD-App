import 'dart:io';

import 'package:dio/dio.dart';
import 'package:student_crud_app/core/resources/data_state.dart';
import 'package:student_crud_app/features/login/data/datasources/remote/login_service.dart';
import 'package:student_crud_app/features/login/domain/entities/user_credentials_entity.dart';
import 'package:student_crud_app/features/login/domain/repository/login_repository.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LoginService _loginService;

  LoginRepositoryImpl(this._loginService);

  @override
  Future<DataState<String>> userLogin(UserCredentialsEntity? userCredentialsEntity) async {
    try {
      final httpResponse = await _loginService.userLogin(
        userCredentialsEntity: userCredentialsEntity
      );

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
    } on DioException catch(e){
      return DataFailed(e);
    }
  }

}