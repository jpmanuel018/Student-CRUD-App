// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_student_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddStudentEntity _$AddStudentEntityFromJson(Map<String, dynamic> json) {
  return _AddStudentEntity.fromJson(json);
}

/// @nodoc
mixin _$AddStudentEntity {
  String get username => throw _privateConstructorUsedError;
  set username(String value) => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  set password(String value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  set email(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddStudentEntityCopyWith<AddStudentEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddStudentEntityCopyWith<$Res> {
  factory $AddStudentEntityCopyWith(
          AddStudentEntity value, $Res Function(AddStudentEntity) then) =
      _$AddStudentEntityCopyWithImpl<$Res, AddStudentEntity>;
  @useResult
  $Res call({String username, String password, String name, String email});
}

/// @nodoc
class _$AddStudentEntityCopyWithImpl<$Res, $Val extends AddStudentEntity>
    implements $AddStudentEntityCopyWith<$Res> {
  _$AddStudentEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddStudentEntityImplCopyWith<$Res>
    implements $AddStudentEntityCopyWith<$Res> {
  factory _$$AddStudentEntityImplCopyWith(_$AddStudentEntityImpl value,
          $Res Function(_$AddStudentEntityImpl) then) =
      __$$AddStudentEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String password, String name, String email});
}

/// @nodoc
class __$$AddStudentEntityImplCopyWithImpl<$Res>
    extends _$AddStudentEntityCopyWithImpl<$Res, _$AddStudentEntityImpl>
    implements _$$AddStudentEntityImplCopyWith<$Res> {
  __$$AddStudentEntityImplCopyWithImpl(_$AddStudentEntityImpl _value,
      $Res Function(_$AddStudentEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_$AddStudentEntityImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddStudentEntityImpl implements _AddStudentEntity {
  _$AddStudentEntityImpl(
      {required this.username,
      required this.password,
      required this.name,
      required this.email});

  factory _$AddStudentEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddStudentEntityImplFromJson(json);

  @override
  String username;
  @override
  String password;
  @override
  String name;
  @override
  String email;

  @override
  String toString() {
    return 'AddStudentEntity(username: $username, password: $password, name: $name, email: $email)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddStudentEntityImplCopyWith<_$AddStudentEntityImpl> get copyWith =>
      __$$AddStudentEntityImplCopyWithImpl<_$AddStudentEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddStudentEntityImplToJson(
      this,
    );
  }
}

abstract class _AddStudentEntity implements AddStudentEntity {
  factory _AddStudentEntity(
      {required String username,
      required String password,
      required String name,
      required String email}) = _$AddStudentEntityImpl;

  factory _AddStudentEntity.fromJson(Map<String, dynamic> json) =
      _$AddStudentEntityImpl.fromJson;

  @override
  String get username;
  set username(String value);
  @override
  String get password;
  set password(String value);
  @override
  String get name;
  set name(String value);
  @override
  String get email;
  set email(String value);
  @override
  @JsonKey(ignore: true)
  _$$AddStudentEntityImplCopyWith<_$AddStudentEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
