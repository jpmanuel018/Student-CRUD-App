import 'package:student_crud_app/core/resources/data_state.dart';
import 'package:student_crud_app/features/students/domain/entities/add_student_entity.dart';
import 'package:student_crud_app/features/students/domain/entities/student_list_entity.dart';

abstract class StudentRepository {
  Future<DataState<List<StudentListEntity>>> getStudents();
  Future<DataState<void>> updateActiveStatus(int? id, bool? isActive);
  Future<DataState<void>> addStudent(AddStudentEntity? entity);
}