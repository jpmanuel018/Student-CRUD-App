import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:student_crud_app/core/resources/data_state.dart';
import 'package:student_crud_app/features/login/domain/usecases/login_usecase.dart';
import 'package:student_crud_app/features/login/domain/entities/user_credentials_entity.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {

  final LoginUseCase _loginUseCase;

  LoginBloc(this._loginUseCase) : super(const LoginState.initial()) {
    on<LoginEvent>((event, emit) async {
      emit(const LoginState.loading());
      final dataState = await _loginUseCase(params: event.userCredentialsEntity);

      if (dataState is DataSuccess && dataState.data != null) {
        emit(LoginState.success(dataState.data!));
      }

      if (dataState is DataFailed) {
        emit(LoginState.error(dataState.error!));
      }
    });
  }
}
