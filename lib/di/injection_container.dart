import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:student_crud_app/features/login/data/datasources/local/auth_service.dart';
import 'package:student_crud_app/features/students/data/datasources/remote/student_service.dart';
import 'package:student_crud_app/features/students/data/repository/student_repository_impl.dart';
import 'package:student_crud_app/features/students/domain/repository/student_repository.dart';
import 'package:student_crud_app/features/students/domain/usecases/add_student_usecase.dart';
import 'package:student_crud_app/features/students/domain/usecases/get_students_usecase.dart';
import 'package:student_crud_app/features/students/domain/usecases/update_active_status_usecase.dart';
import 'package:student_crud_app/features/students/presentation/bloc/student_bloc.dart';

import '../features/login/data/datasources/remote/login_service.dart';
import '../features/login/data/repository/login_repository_impl.dart';
import '../features/login/domain/repository/login_repository.dart';
import '../features/login/domain/usecases/login_usecase.dart';
import '../features/login/presentation/bloc/login_bloc.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // Dio
  sl.registerSingleton<Dio>(Dio());

  // Dependencies
  sl.registerSingleton<LoginService>(LoginService(sl()));

  sl.registerSingleton<StudentService>(StudentService(sl()));

  sl.registerSingleton<AuthService>(AuthService());

  sl.registerSingleton<LoginRepository>(
      LoginRepositoryImpl(sl())
  );

  sl.registerSingleton<StudentRepository>(
      StudentRepositoryImpl(sl(),sl())
  );

  //UseCases
  sl.registerSingleton<LoginUseCase>(
      LoginUseCase(sl())
  );

  sl.registerSingleton<GetStudentsUseCase>(
      GetStudentsUseCase(sl())
  );

  sl.registerSingleton<UpdateActiveStatusUseCase>(
      UpdateActiveStatusUseCase(sl())
  );

  sl.registerSingleton<AddStudentUseCase>(
      AddStudentUseCase(sl())
  );

  //Blocs
  sl.registerFactory<LoginBloc>(
          ()=> LoginBloc(sl())
  );

  sl.registerFactory<StudentBloc>(
          ()=> StudentBloc(sl(), sl(), sl())
  );
}