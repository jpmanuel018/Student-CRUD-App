// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_list_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StudentListEntity _$StudentListEntityFromJson(Map<String, dynamic> json) {
  return _StudentListEntity.fromJson(json);
}

/// @nodoc
mixin _$StudentListEntity {
  @JsonKey(name: 'Id')
  int get Id => throw _privateConstructorUsedError;
  @JsonKey(name: 'Id')
  set Id(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'Username')
  String? get Username => throw _privateConstructorUsedError;
  @JsonKey(name: 'Username')
  set Username(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'Name')
  String? get Name => throw _privateConstructorUsedError;
  @JsonKey(name: 'Name')
  set Name(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'Email')
  String? get Email => throw _privateConstructorUsedError;
  @JsonKey(name: 'Email')
  set Email(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'IsActive')
  bool get IsActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'IsActive')
  set IsActive(bool value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'CreatedDate')
  DateTime? get CreatedDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'CreatedDate')
  set CreatedDate(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'ModifiedDate')
  DateTime? get ModifiedDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'ModifiedDate')
  set ModifiedDate(DateTime? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudentListEntityCopyWith<StudentListEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentListEntityCopyWith<$Res> {
  factory $StudentListEntityCopyWith(
          StudentListEntity value, $Res Function(StudentListEntity) then) =
      _$StudentListEntityCopyWithImpl<$Res, StudentListEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Id') int Id,
      @JsonKey(name: 'Username') String? Username,
      @JsonKey(name: 'Name') String? Name,
      @JsonKey(name: 'Email') String? Email,
      @JsonKey(name: 'IsActive') bool IsActive,
      @JsonKey(name: 'CreatedDate') DateTime? CreatedDate,
      @JsonKey(name: 'ModifiedDate') DateTime? ModifiedDate});
}

/// @nodoc
class _$StudentListEntityCopyWithImpl<$Res, $Val extends StudentListEntity>
    implements $StudentListEntityCopyWith<$Res> {
  _$StudentListEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Id = null,
    Object? Username = freezed,
    Object? Name = freezed,
    Object? Email = freezed,
    Object? IsActive = null,
    Object? CreatedDate = freezed,
    Object? ModifiedDate = freezed,
  }) {
    return _then(_value.copyWith(
      Id: null == Id
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as int,
      Username: freezed == Username
          ? _value.Username
          : Username // ignore: cast_nullable_to_non_nullable
              as String?,
      Name: freezed == Name
          ? _value.Name
          : Name // ignore: cast_nullable_to_non_nullable
              as String?,
      Email: freezed == Email
          ? _value.Email
          : Email // ignore: cast_nullable_to_non_nullable
              as String?,
      IsActive: null == IsActive
          ? _value.IsActive
          : IsActive // ignore: cast_nullable_to_non_nullable
              as bool,
      CreatedDate: freezed == CreatedDate
          ? _value.CreatedDate
          : CreatedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      ModifiedDate: freezed == ModifiedDate
          ? _value.ModifiedDate
          : ModifiedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentListEntityImplCopyWith<$Res>
    implements $StudentListEntityCopyWith<$Res> {
  factory _$$StudentListEntityImplCopyWith(_$StudentListEntityImpl value,
          $Res Function(_$StudentListEntityImpl) then) =
      __$$StudentListEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Id') int Id,
      @JsonKey(name: 'Username') String? Username,
      @JsonKey(name: 'Name') String? Name,
      @JsonKey(name: 'Email') String? Email,
      @JsonKey(name: 'IsActive') bool IsActive,
      @JsonKey(name: 'CreatedDate') DateTime? CreatedDate,
      @JsonKey(name: 'ModifiedDate') DateTime? ModifiedDate});
}

/// @nodoc
class __$$StudentListEntityImplCopyWithImpl<$Res>
    extends _$StudentListEntityCopyWithImpl<$Res, _$StudentListEntityImpl>
    implements _$$StudentListEntityImplCopyWith<$Res> {
  __$$StudentListEntityImplCopyWithImpl(_$StudentListEntityImpl _value,
      $Res Function(_$StudentListEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Id = null,
    Object? Username = freezed,
    Object? Name = freezed,
    Object? Email = freezed,
    Object? IsActive = null,
    Object? CreatedDate = freezed,
    Object? ModifiedDate = freezed,
  }) {
    return _then(_$StudentListEntityImpl(
      Id: null == Id
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as int,
      Username: freezed == Username
          ? _value.Username
          : Username // ignore: cast_nullable_to_non_nullable
              as String?,
      Name: freezed == Name
          ? _value.Name
          : Name // ignore: cast_nullable_to_non_nullable
              as String?,
      Email: freezed == Email
          ? _value.Email
          : Email // ignore: cast_nullable_to_non_nullable
              as String?,
      IsActive: null == IsActive
          ? _value.IsActive
          : IsActive // ignore: cast_nullable_to_non_nullable
              as bool,
      CreatedDate: freezed == CreatedDate
          ? _value.CreatedDate
          : CreatedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      ModifiedDate: freezed == ModifiedDate
          ? _value.ModifiedDate
          : ModifiedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentListEntityImpl implements _StudentListEntity {
  _$StudentListEntityImpl(
      {@JsonKey(name: 'Id') required this.Id,
      @JsonKey(name: 'Username') required this.Username,
      @JsonKey(name: 'Name') required this.Name,
      @JsonKey(name: 'Email') required this.Email,
      @JsonKey(name: 'IsActive') required this.IsActive,
      @JsonKey(name: 'CreatedDate') required this.CreatedDate,
      @JsonKey(name: 'ModifiedDate') required this.ModifiedDate});

  factory _$StudentListEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentListEntityImplFromJson(json);

  @override
  @JsonKey(name: 'Id')
  int Id;
  @override
  @JsonKey(name: 'Username')
  String? Username;
  @override
  @JsonKey(name: 'Name')
  String? Name;
  @override
  @JsonKey(name: 'Email')
  String? Email;
  @override
  @JsonKey(name: 'IsActive')
  bool IsActive;
  @override
  @JsonKey(name: 'CreatedDate')
  DateTime? CreatedDate;
  @override
  @JsonKey(name: 'ModifiedDate')
  DateTime? ModifiedDate;

  @override
  String toString() {
    return 'StudentListEntity(Id: $Id, Username: $Username, Name: $Name, Email: $Email, IsActive: $IsActive, CreatedDate: $CreatedDate, ModifiedDate: $ModifiedDate)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentListEntityImplCopyWith<_$StudentListEntityImpl> get copyWith =>
      __$$StudentListEntityImplCopyWithImpl<_$StudentListEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentListEntityImplToJson(
      this,
    );
  }
}

abstract class _StudentListEntity implements StudentListEntity {
  factory _StudentListEntity(
          {@JsonKey(name: 'Id') required int Id,
          @JsonKey(name: 'Username') required String? Username,
          @JsonKey(name: 'Name') required String? Name,
          @JsonKey(name: 'Email') required String? Email,
          @JsonKey(name: 'IsActive') required bool IsActive,
          @JsonKey(name: 'CreatedDate') required DateTime? CreatedDate,
          @JsonKey(name: 'ModifiedDate') required DateTime? ModifiedDate}) =
      _$StudentListEntityImpl;

  factory _StudentListEntity.fromJson(Map<String, dynamic> json) =
      _$StudentListEntityImpl.fromJson;

  @override
  @JsonKey(name: 'Id')
  int get Id;
  @JsonKey(name: 'Id')
  set Id(int value);
  @override
  @JsonKey(name: 'Username')
  String? get Username;
  @JsonKey(name: 'Username')
  set Username(String? value);
  @override
  @JsonKey(name: 'Name')
  String? get Name;
  @JsonKey(name: 'Name')
  set Name(String? value);
  @override
  @JsonKey(name: 'Email')
  String? get Email;
  @JsonKey(name: 'Email')
  set Email(String? value);
  @override
  @JsonKey(name: 'IsActive')
  bool get IsActive;
  @JsonKey(name: 'IsActive')
  set IsActive(bool value);
  @override
  @JsonKey(name: 'CreatedDate')
  DateTime? get CreatedDate;
  @JsonKey(name: 'CreatedDate')
  set CreatedDate(DateTime? value);
  @override
  @JsonKey(name: 'ModifiedDate')
  DateTime? get ModifiedDate;
  @JsonKey(name: 'ModifiedDate')
  set ModifiedDate(DateTime? value);
  @override
  @JsonKey(ignore: true)
  _$$StudentListEntityImplCopyWith<_$StudentListEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
