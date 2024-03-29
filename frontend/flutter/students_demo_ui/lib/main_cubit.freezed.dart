// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainState {
  bool get isNewStudentCreating => throw _privateConstructorUsedError;
  bool get isAllStudentsLoading => throw _privateConstructorUsedError;
  List<Student> get students => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainStateCopyWith<MainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
  @useResult
  $Res call(
      {bool isNewStudentCreating,
      bool isAllStudentsLoading,
      List<Student> students});
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isNewStudentCreating = null,
    Object? isAllStudentsLoading = null,
    Object? students = null,
  }) {
    return _then(_value.copyWith(
      isNewStudentCreating: null == isNewStudentCreating
          ? _value.isNewStudentCreating
          : isNewStudentCreating // ignore: cast_nullable_to_non_nullable
              as bool,
      isAllStudentsLoading: null == isAllStudentsLoading
          ? _value.isAllStudentsLoading
          : isAllStudentsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      students: null == students
          ? _value.students
          : students // ignore: cast_nullable_to_non_nullable
              as List<Student>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainStateImplCopyWith<$Res>
    implements $MainStateCopyWith<$Res> {
  factory _$$MainStateImplCopyWith(
          _$MainStateImpl value, $Res Function(_$MainStateImpl) then) =
      __$$MainStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isNewStudentCreating,
      bool isAllStudentsLoading,
      List<Student> students});
}

/// @nodoc
class __$$MainStateImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$MainStateImpl>
    implements _$$MainStateImplCopyWith<$Res> {
  __$$MainStateImplCopyWithImpl(
      _$MainStateImpl _value, $Res Function(_$MainStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isNewStudentCreating = null,
    Object? isAllStudentsLoading = null,
    Object? students = null,
  }) {
    return _then(_$MainStateImpl(
      isNewStudentCreating: null == isNewStudentCreating
          ? _value.isNewStudentCreating
          : isNewStudentCreating // ignore: cast_nullable_to_non_nullable
              as bool,
      isAllStudentsLoading: null == isAllStudentsLoading
          ? _value.isAllStudentsLoading
          : isAllStudentsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      students: null == students
          ? _value._students
          : students // ignore: cast_nullable_to_non_nullable
              as List<Student>,
    ));
  }
}

/// @nodoc

class _$MainStateImpl implements _MainState {
  const _$MainStateImpl(
      {this.isNewStudentCreating = false,
      this.isAllStudentsLoading = false,
      final List<Student> students = const []})
      : _students = students;

  @override
  @JsonKey()
  final bool isNewStudentCreating;
  @override
  @JsonKey()
  final bool isAllStudentsLoading;
  final List<Student> _students;
  @override
  @JsonKey()
  List<Student> get students {
    if (_students is EqualUnmodifiableListView) return _students;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_students);
  }

  @override
  String toString() {
    return 'MainState(isNewStudentCreating: $isNewStudentCreating, isAllStudentsLoading: $isAllStudentsLoading, students: $students)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainStateImpl &&
            (identical(other.isNewStudentCreating, isNewStudentCreating) ||
                other.isNewStudentCreating == isNewStudentCreating) &&
            (identical(other.isAllStudentsLoading, isAllStudentsLoading) ||
                other.isAllStudentsLoading == isAllStudentsLoading) &&
            const DeepCollectionEquality().equals(other._students, _students));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isNewStudentCreating,
      isAllStudentsLoading, const DeepCollectionEquality().hash(_students));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainStateImplCopyWith<_$MainStateImpl> get copyWith =>
      __$$MainStateImplCopyWithImpl<_$MainStateImpl>(this, _$identity);
}

abstract class _MainState implements MainState {
  const factory _MainState(
      {final bool isNewStudentCreating,
      final bool isAllStudentsLoading,
      final List<Student> students}) = _$MainStateImpl;

  @override
  bool get isNewStudentCreating;
  @override
  bool get isAllStudentsLoading;
  @override
  List<Student> get students;
  @override
  @JsonKey(ignore: true)
  _$$MainStateImplCopyWith<_$MainStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
