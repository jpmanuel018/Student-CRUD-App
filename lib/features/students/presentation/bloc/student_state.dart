part of 'student_bloc.dart';

@freezed
class StudentState with _$StudentState {
  const factory StudentState.initial() = _Initial;
  const factory StudentState.loading() = _Loading;
  const factory StudentState.success(List<StudentListEntity> students) = _Success;
  const factory StudentState.updateSuccess() = _UpdateSuccess;
  const factory StudentState.addSuccess() = _AddSuccess;
  const factory StudentState.error(DioException error) = _Error;
}
