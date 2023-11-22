// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StudentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getStudents,
    required TResult Function(AddStudentEntity? entity) addStudent,
    required TResult Function(int? id, bool? isActive) updateStudent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getStudents,
    TResult? Function(AddStudentEntity? entity)? addStudent,
    TResult? Function(int? id, bool? isActive)? updateStudent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getStudents,
    TResult Function(AddStudentEntity? entity)? addStudent,
    TResult Function(int? id, bool? isActive)? updateStudent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetStudents value) getStudents,
    required TResult Function(_AddStudent value) addStudent,
    required TResult Function(_UpdateStudent value) updateStudent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetStudents value)? getStudents,
    TResult? Function(_AddStudent value)? addStudent,
    TResult? Function(_UpdateStudent value)? updateStudent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetStudents value)? getStudents,
    TResult Function(_AddStudent value)? addStudent,
    TResult Function(_UpdateStudent value)? updateStudent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentEventCopyWith<$Res> {
  factory $StudentEventCopyWith(
          StudentEvent value, $Res Function(StudentEvent) then) =
      _$StudentEventCopyWithImpl<$Res, StudentEvent>;
}

/// @nodoc
class _$StudentEventCopyWithImpl<$Res, $Val extends StudentEvent>
    implements $StudentEventCopyWith<$Res> {
  _$StudentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetStudentsImplCopyWith<$Res> {
  factory _$$GetStudentsImplCopyWith(
          _$GetStudentsImpl value, $Res Function(_$GetStudentsImpl) then) =
      __$$GetStudentsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetStudentsImplCopyWithImpl<$Res>
    extends _$StudentEventCopyWithImpl<$Res, _$GetStudentsImpl>
    implements _$$GetStudentsImplCopyWith<$Res> {
  __$$GetStudentsImplCopyWithImpl(
      _$GetStudentsImpl _value, $Res Function(_$GetStudentsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetStudentsImpl implements _GetStudents {
  const _$GetStudentsImpl();

  @override
  String toString() {
    return 'StudentEvent.getStudents()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetStudentsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getStudents,
    required TResult Function(AddStudentEntity? entity) addStudent,
    required TResult Function(int? id, bool? isActive) updateStudent,
  }) {
    return getStudents();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getStudents,
    TResult? Function(AddStudentEntity? entity)? addStudent,
    TResult? Function(int? id, bool? isActive)? updateStudent,
  }) {
    return getStudents?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getStudents,
    TResult Function(AddStudentEntity? entity)? addStudent,
    TResult Function(int? id, bool? isActive)? updateStudent,
    required TResult orElse(),
  }) {
    if (getStudents != null) {
      return getStudents();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetStudents value) getStudents,
    required TResult Function(_AddStudent value) addStudent,
    required TResult Function(_UpdateStudent value) updateStudent,
  }) {
    return getStudents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetStudents value)? getStudents,
    TResult? Function(_AddStudent value)? addStudent,
    TResult? Function(_UpdateStudent value)? updateStudent,
  }) {
    return getStudents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetStudents value)? getStudents,
    TResult Function(_AddStudent value)? addStudent,
    TResult Function(_UpdateStudent value)? updateStudent,
    required TResult orElse(),
  }) {
    if (getStudents != null) {
      return getStudents(this);
    }
    return orElse();
  }
}

abstract class _GetStudents implements StudentEvent {
  const factory _GetStudents() = _$GetStudentsImpl;
}

/// @nodoc
abstract class _$$AddStudentImplCopyWith<$Res> {
  factory _$$AddStudentImplCopyWith(
          _$AddStudentImpl value, $Res Function(_$AddStudentImpl) then) =
      __$$AddStudentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddStudentEntity? entity});

  $AddStudentEntityCopyWith<$Res>? get entity;
}

/// @nodoc
class __$$AddStudentImplCopyWithImpl<$Res>
    extends _$StudentEventCopyWithImpl<$Res, _$AddStudentImpl>
    implements _$$AddStudentImplCopyWith<$Res> {
  __$$AddStudentImplCopyWithImpl(
      _$AddStudentImpl _value, $Res Function(_$AddStudentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = freezed,
  }) {
    return _then(_$AddStudentImpl(
      freezed == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as AddStudentEntity?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AddStudentEntityCopyWith<$Res>? get entity {
    if (_value.entity == null) {
      return null;
    }

    return $AddStudentEntityCopyWith<$Res>(_value.entity!, (value) {
      return _then(_value.copyWith(entity: value));
    });
  }
}

/// @nodoc

class _$AddStudentImpl implements _AddStudent {
  const _$AddStudentImpl(this.entity);

  @override
  final AddStudentEntity? entity;

  @override
  String toString() {
    return 'StudentEvent.addStudent(entity: $entity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddStudentImpl &&
            (identical(other.entity, entity) || other.entity == entity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddStudentImplCopyWith<_$AddStudentImpl> get copyWith =>
      __$$AddStudentImplCopyWithImpl<_$AddStudentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getStudents,
    required TResult Function(AddStudentEntity? entity) addStudent,
    required TResult Function(int? id, bool? isActive) updateStudent,
  }) {
    return addStudent(entity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getStudents,
    TResult? Function(AddStudentEntity? entity)? addStudent,
    TResult? Function(int? id, bool? isActive)? updateStudent,
  }) {
    return addStudent?.call(entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getStudents,
    TResult Function(AddStudentEntity? entity)? addStudent,
    TResult Function(int? id, bool? isActive)? updateStudent,
    required TResult orElse(),
  }) {
    if (addStudent != null) {
      return addStudent(entity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetStudents value) getStudents,
    required TResult Function(_AddStudent value) addStudent,
    required TResult Function(_UpdateStudent value) updateStudent,
  }) {
    return addStudent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetStudents value)? getStudents,
    TResult? Function(_AddStudent value)? addStudent,
    TResult? Function(_UpdateStudent value)? updateStudent,
  }) {
    return addStudent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetStudents value)? getStudents,
    TResult Function(_AddStudent value)? addStudent,
    TResult Function(_UpdateStudent value)? updateStudent,
    required TResult orElse(),
  }) {
    if (addStudent != null) {
      return addStudent(this);
    }
    return orElse();
  }
}

abstract class _AddStudent implements StudentEvent {
  const factory _AddStudent(final AddStudentEntity? entity) = _$AddStudentImpl;

  AddStudentEntity? get entity;
  @JsonKey(ignore: true)
  _$$AddStudentImplCopyWith<_$AddStudentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateStudentImplCopyWith<$Res> {
  factory _$$UpdateStudentImplCopyWith(
          _$UpdateStudentImpl value, $Res Function(_$UpdateStudentImpl) then) =
      __$$UpdateStudentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? id, bool? isActive});
}

/// @nodoc
class __$$UpdateStudentImplCopyWithImpl<$Res>
    extends _$StudentEventCopyWithImpl<$Res, _$UpdateStudentImpl>
    implements _$$UpdateStudentImplCopyWith<$Res> {
  __$$UpdateStudentImplCopyWithImpl(
      _$UpdateStudentImpl _value, $Res Function(_$UpdateStudentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$UpdateStudentImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$UpdateStudentImpl implements _UpdateStudent {
  const _$UpdateStudentImpl(this.id, this.isActive);

  @override
  final int? id;
  @override
  final bool? isActive;

  @override
  String toString() {
    return 'StudentEvent.updateStudent(id: $id, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStudentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateStudentImplCopyWith<_$UpdateStudentImpl> get copyWith =>
      __$$UpdateStudentImplCopyWithImpl<_$UpdateStudentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getStudents,
    required TResult Function(AddStudentEntity? entity) addStudent,
    required TResult Function(int? id, bool? isActive) updateStudent,
  }) {
    return updateStudent(id, isActive);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getStudents,
    TResult? Function(AddStudentEntity? entity)? addStudent,
    TResult? Function(int? id, bool? isActive)? updateStudent,
  }) {
    return updateStudent?.call(id, isActive);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getStudents,
    TResult Function(AddStudentEntity? entity)? addStudent,
    TResult Function(int? id, bool? isActive)? updateStudent,
    required TResult orElse(),
  }) {
    if (updateStudent != null) {
      return updateStudent(id, isActive);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetStudents value) getStudents,
    required TResult Function(_AddStudent value) addStudent,
    required TResult Function(_UpdateStudent value) updateStudent,
  }) {
    return updateStudent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetStudents value)? getStudents,
    TResult? Function(_AddStudent value)? addStudent,
    TResult? Function(_UpdateStudent value)? updateStudent,
  }) {
    return updateStudent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetStudents value)? getStudents,
    TResult Function(_AddStudent value)? addStudent,
    TResult Function(_UpdateStudent value)? updateStudent,
    required TResult orElse(),
  }) {
    if (updateStudent != null) {
      return updateStudent(this);
    }
    return orElse();
  }
}

abstract class _UpdateStudent implements StudentEvent {
  const factory _UpdateStudent(final int? id, final bool? isActive) =
      _$UpdateStudentImpl;

  int? get id;
  bool? get isActive;
  @JsonKey(ignore: true)
  _$$UpdateStudentImplCopyWith<_$UpdateStudentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StudentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<StudentListEntity> students) success,
    required TResult Function() updateSuccess,
    required TResult Function() addSuccess,
    required TResult Function(DioException error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<StudentListEntity> students)? success,
    TResult? Function()? updateSuccess,
    TResult? Function()? addSuccess,
    TResult? Function(DioException error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<StudentListEntity> students)? success,
    TResult Function()? updateSuccess,
    TResult Function()? addSuccess,
    TResult Function(DioException error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_AddSuccess value)? addSuccess,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentStateCopyWith<$Res> {
  factory $StudentStateCopyWith(
          StudentState value, $Res Function(StudentState) then) =
      _$StudentStateCopyWithImpl<$Res, StudentState>;
}

/// @nodoc
class _$StudentStateCopyWithImpl<$Res, $Val extends StudentState>
    implements $StudentStateCopyWith<$Res> {
  _$StudentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$StudentStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'StudentState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<StudentListEntity> students) success,
    required TResult Function() updateSuccess,
    required TResult Function() addSuccess,
    required TResult Function(DioException error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<StudentListEntity> students)? success,
    TResult? Function()? updateSuccess,
    TResult? Function()? addSuccess,
    TResult? Function(DioException error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<StudentListEntity> students)? success,
    TResult Function()? updateSuccess,
    TResult Function()? addSuccess,
    TResult Function(DioException error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_AddSuccess value)? addSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements StudentState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$StudentStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'StudentState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<StudentListEntity> students) success,
    required TResult Function() updateSuccess,
    required TResult Function() addSuccess,
    required TResult Function(DioException error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<StudentListEntity> students)? success,
    TResult? Function()? updateSuccess,
    TResult? Function()? addSuccess,
    TResult? Function(DioException error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<StudentListEntity> students)? success,
    TResult Function()? updateSuccess,
    TResult Function()? addSuccess,
    TResult Function(DioException error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_AddSuccess value)? addSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements StudentState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<StudentListEntity> students});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$StudentStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? students = null,
  }) {
    return _then(_$SuccessImpl(
      null == students
          ? _value._students
          : students // ignore: cast_nullable_to_non_nullable
              as List<StudentListEntity>,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(final List<StudentListEntity> students)
      : _students = students;

  final List<StudentListEntity> _students;
  @override
  List<StudentListEntity> get students {
    if (_students is EqualUnmodifiableListView) return _students;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_students);
  }

  @override
  String toString() {
    return 'StudentState.success(students: $students)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(other._students, _students));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_students));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<StudentListEntity> students) success,
    required TResult Function() updateSuccess,
    required TResult Function() addSuccess,
    required TResult Function(DioException error) error,
  }) {
    return success(students);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<StudentListEntity> students)? success,
    TResult? Function()? updateSuccess,
    TResult? Function()? addSuccess,
    TResult? Function(DioException error)? error,
  }) {
    return success?.call(students);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<StudentListEntity> students)? success,
    TResult Function()? updateSuccess,
    TResult Function()? addSuccess,
    TResult Function(DioException error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(students);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_AddSuccess value)? addSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements StudentState {
  const factory _Success(final List<StudentListEntity> students) =
      _$SuccessImpl;

  List<StudentListEntity> get students;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateSuccessImplCopyWith<$Res> {
  factory _$$UpdateSuccessImplCopyWith(
          _$UpdateSuccessImpl value, $Res Function(_$UpdateSuccessImpl) then) =
      __$$UpdateSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateSuccessImplCopyWithImpl<$Res>
    extends _$StudentStateCopyWithImpl<$Res, _$UpdateSuccessImpl>
    implements _$$UpdateSuccessImplCopyWith<$Res> {
  __$$UpdateSuccessImplCopyWithImpl(
      _$UpdateSuccessImpl _value, $Res Function(_$UpdateSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateSuccessImpl implements _UpdateSuccess {
  const _$UpdateSuccessImpl();

  @override
  String toString() {
    return 'StudentState.updateSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<StudentListEntity> students) success,
    required TResult Function() updateSuccess,
    required TResult Function() addSuccess,
    required TResult Function(DioException error) error,
  }) {
    return updateSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<StudentListEntity> students)? success,
    TResult? Function()? updateSuccess,
    TResult? Function()? addSuccess,
    TResult? Function(DioException error)? error,
  }) {
    return updateSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<StudentListEntity> students)? success,
    TResult Function()? updateSuccess,
    TResult Function()? addSuccess,
    TResult Function(DioException error)? error,
    required TResult orElse(),
  }) {
    if (updateSuccess != null) {
      return updateSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_Error value) error,
  }) {
    return updateSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_AddSuccess value)? addSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return updateSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (updateSuccess != null) {
      return updateSuccess(this);
    }
    return orElse();
  }
}

abstract class _UpdateSuccess implements StudentState {
  const factory _UpdateSuccess() = _$UpdateSuccessImpl;
}

/// @nodoc
abstract class _$$AddSuccessImplCopyWith<$Res> {
  factory _$$AddSuccessImplCopyWith(
          _$AddSuccessImpl value, $Res Function(_$AddSuccessImpl) then) =
      __$$AddSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddSuccessImplCopyWithImpl<$Res>
    extends _$StudentStateCopyWithImpl<$Res, _$AddSuccessImpl>
    implements _$$AddSuccessImplCopyWith<$Res> {
  __$$AddSuccessImplCopyWithImpl(
      _$AddSuccessImpl _value, $Res Function(_$AddSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddSuccessImpl implements _AddSuccess {
  const _$AddSuccessImpl();

  @override
  String toString() {
    return 'StudentState.addSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<StudentListEntity> students) success,
    required TResult Function() updateSuccess,
    required TResult Function() addSuccess,
    required TResult Function(DioException error) error,
  }) {
    return addSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<StudentListEntity> students)? success,
    TResult? Function()? updateSuccess,
    TResult? Function()? addSuccess,
    TResult? Function(DioException error)? error,
  }) {
    return addSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<StudentListEntity> students)? success,
    TResult Function()? updateSuccess,
    TResult Function()? addSuccess,
    TResult Function(DioException error)? error,
    required TResult orElse(),
  }) {
    if (addSuccess != null) {
      return addSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_Error value) error,
  }) {
    return addSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_AddSuccess value)? addSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return addSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (addSuccess != null) {
      return addSuccess(this);
    }
    return orElse();
  }
}

abstract class _AddSuccess implements StudentState {
  const factory _AddSuccess() = _$AddSuccessImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DioException error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$StudentStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DioException,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.error);

  @override
  final DioException error;

  @override
  String toString() {
    return 'StudentState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<StudentListEntity> students) success,
    required TResult Function() updateSuccess,
    required TResult Function() addSuccess,
    required TResult Function(DioException error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<StudentListEntity> students)? success,
    TResult? Function()? updateSuccess,
    TResult? Function()? addSuccess,
    TResult? Function(DioException error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<StudentListEntity> students)? success,
    TResult Function()? updateSuccess,
    TResult Function()? addSuccess,
    TResult Function(DioException error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_AddSuccess value)? addSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements StudentState {
  const factory _Error(final DioException error) = _$ErrorImpl;

  DioException get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
