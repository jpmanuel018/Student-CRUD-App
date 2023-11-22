import 'package:student_crud_app/core/resources/data_state.dart';
import 'package:student_crud_app/core/usecase/usecase.dart';
import 'package:student_crud_app/features/students/domain/entities/student_list_entity.dart';
import 'package:student_crud_app/features/students/domain/repository/student_repository.dart';

class GetStudentsUseCase implements UseCase<DataState<List<StudentListEntity>>, void> {

  final StudentRepository _studentRepository;

  GetStudentsUseCase(this._studentRepository);

  @override
  Future<DataState<List<StudentListEntity>>> call({void params}) {
    return _studentRepository.getStudents();
  }

}