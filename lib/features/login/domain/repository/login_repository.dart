import 'package:student_crud_app/core/resources/data_state.dart';
import 'package:student_crud_app/features/login/domain/entities/user_credentials_entity.dart';

abstract class LoginRepository {
  Future<DataState<String>> userLogin(UserCredentialsEntity? userCredentialsEntity);
}