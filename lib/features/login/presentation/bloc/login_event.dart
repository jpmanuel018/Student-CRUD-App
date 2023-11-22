part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.userLogin(UserCredentialsEntity? userCredentialsEntity) = _UserLogin;
}
