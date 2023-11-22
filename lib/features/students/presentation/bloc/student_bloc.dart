import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:student_crud_app/core/resources/data_state.dart';
import 'package:student_crud_app/features/login/data/datasources/local/auth_service.dart';
import 'package:student_crud_app/features/students/domain/entities/add_student_entity.dart';
import 'package:student_crud_app/features/students/domain/entities/update_active_status_request.dart';
import 'package:student_crud_app/features/students/domain/usecases/add_student_usecase.dart';
import 'package:student_crud_app/features/students/domain/usecases/get_students_usecase.dart';
import 'package:student_crud_app/features/students/domain/usecases/update_active_status_usecase.dart';

import '../../domain/entities/student_list_entity.dart';

part 'student_event.dart';
part 'student_state.dart';
part 'student_bloc.freezed.dart';

class StudentBloc extends Bloc<StudentEvent, StudentState> {

  final GetStudentsUseCase _getStudentUseCase;
  final UpdateActiveStatusUseCase _updateActiveStatusUseCase;
  final AddStudentUseCase _addStudentUseCase;

  StudentBloc(
      this._getStudentUseCase,
      this._updateActiveStatusUseCase,
      this._addStudentUseCase
      ) : super(const StudentState.initial()) {

    on<_GetStudents>((event, emit) async {
      emit(const StudentState.loading());
      final dataState = await _getStudentUseCase();

      if (dataState is DataSuccess && dataState.data != null) {
        emit(StudentState.success(dataState.data!));
      }

      if (dataState is DataFailed) {
        emit(StudentState.error(dataState.error!));
      }
    });

    on<_UpdateStudent>((event, emit) async {
      emit(const StudentState.loading());
      final dataState = await _updateActiveStatusUseCase(params: UpdateActiveStatusRequest(id: event.id!, isActive: event.isActive!));

      if (dataState is DataSuccess) {
        emit(const StudentState.updateSuccess());
      }

      if (dataState is DataFailed) {
        emit(StudentState.error(dataState.error!));
      }
    });

    on<_AddStudent>((event, emit) async {
      emit(const StudentState.loading());
      final dataState = await _addStudentUseCase(params: event.entity);

      if (dataState is DataSuccess) {
        emit(const StudentState.addSuccess());
      }

      if (dataState is DataFailed) {
        emit(StudentState.error(dataState.error!));
      }
    });
  }
}
