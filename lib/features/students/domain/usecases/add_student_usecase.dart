import 'package:student_crud_app/core/resources/data_state.dart';
import 'package:student_crud_app/core/usecase/usecase.dart';
import 'package:student_crud_app/features/students/domain/entities/add_student_entity.dart';

import '../repository/student_repository.dart';

class AddStudentUseCase implements UseCase<DataState<void>, AddStudentEntity?> {

  final StudentRepository _studentRepository;

  AddStudentUseCase(this._studentRepository);

  @override
  Future<DataState<void>> call({AddStudentEntity? params}) {
    return _studentRepository.addStudent(params);
  }

}