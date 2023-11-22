import 'package:student_crud_app/core/resources/data_state.dart';
import 'package:student_crud_app/core/usecase/usecase.dart';
import 'package:student_crud_app/features/login/domain/entities/user_credentials_entity.dart';
import 'package:student_crud_app/features/login/domain/repository/login_repository.dart';

class LoginUseCase implements UseCase<DataState<String>, UserCredentialsEntity?>{

  final LoginRepository _loginRepository;

  LoginUseCase(this._loginRepository);

  @override
  Future<DataState<String>> call({UserCredentialsEntity? params}) {
    return _loginRepository.userLogin(params);
  }

}