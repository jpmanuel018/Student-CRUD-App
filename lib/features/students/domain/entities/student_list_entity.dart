import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_list_entity.freezed.dart';

part 'student_list_entity.g.dart';

@unfreezed
class StudentListEntity with _$StudentListEntity {
  factory StudentListEntity({
    @JsonKey(name: 'Id') required int Id,
    @JsonKey(name: 'Username') required String? Username,
    @JsonKey(name: 'Name') required String? Name,
    @JsonKey(name: 'Email') required String? Email,
    @JsonKey(name: 'IsActive') required bool IsActive,
    @JsonKey(name: 'CreatedDate') required DateTime? CreatedDate,
    @JsonKey(name: 'ModifiedDate') required DateTime? ModifiedDate,
  }) = _StudentListEntity;

  factory StudentListEntity.fromJson(Map<String, dynamic> json) =>
      _$StudentListEntityFromJson(json);
}
