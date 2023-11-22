part of 'student_bloc.dart';

@freezed
class StudentEvent with _$StudentEvent {
  const factory StudentEvent.getStudents() = _GetStudents;
  const factory StudentEvent.addStudent(AddStudentEntity? entity) = _AddStudent;
  const factory StudentEvent.updateStudent(int? id, bool? isActive) = _UpdateStudent;
}
