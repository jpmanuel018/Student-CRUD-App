import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_student_entity.freezed.dart';

part 'add_student_entity.g.dart';

@unfreezed
class AddStudentEntity with _$AddStudentEntity {
  factory AddStudentEntity({
    required String username,
    required String password,
    required String name,
    required String email,
  }) = _AddStudentEntity;

  factory AddStudentEntity.fromJson(Map<String, dynamic> json) =>
      _$AddStudentEntityFromJson(json);
}
