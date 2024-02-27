// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateState {
  bool get isUpdating => throw _privateConstructorUsedError;
  bool get isCurrentStudentLoading => throw _privateConstructorUsedError;
  Student? get currentStudent => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateStateCopyWith<UpdateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateStateCopyWith<$Res> {
  factory $UpdateStateCopyWith(
          UpdateState value, $Res Function(UpdateState) then) =
      _$UpdateStateCopyWithImpl<$Res, UpdateState>;
  @useResult
  $Res call(
      {bool isUpdating, bool isCurrentStudentLoading, Student? currentStudent});
}

/// @nodoc
class _$UpdateStateCopyWithImpl<$Res, $Val extends UpdateState>
    implements $UpdateStateCopyWith<$Res> {
  _$UpdateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUpdating = null,
    Object? isCurrentStudentLoading = null,
    Object? currentStudent = freezed,
  }) {
    return _then(_value.copyWith(
      isUpdating: null == isUpdating
          ? _value.isUpdating
          : isUpdating // ignore: cast_nullable_to_non_nullable
              as bool,
      isCurrentStudentLoading: null == isCurrentStudentLoading
          ? _value.isCurrentStudentLoading
          : isCurrentStudentLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentStudent: freezed == currentStudent
          ? _value.currentStudent
          : currentStudent // ignore: cast_nullable_to_non_nullable
              as Student?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateStateImplCopyWith<$Res>
    implements $UpdateStateCopyWith<$Res> {
  factory _$$UpdateStateImplCopyWith(
          _$UpdateStateImpl value, $Res Function(_$UpdateStateImpl) then) =
      __$$UpdateStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isUpdating, bool isCurrentStudentLoading, Student? currentStudent});
}

/// @nodoc
class __$$UpdateStateImplCopyWithImpl<$Res>
    extends _$UpdateStateCopyWithImpl<$Res, _$UpdateStateImpl>
    implements _$$UpdateStateImplCopyWith<$Res> {
  __$$UpdateStateImplCopyWithImpl(
      _$UpdateStateImpl _value, $Res Function(_$UpdateStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUpdating = null,
    Object? isCurrentStudentLoading = null,
    Object? currentStudent = freezed,
  }) {
    return _then(_$UpdateStateImpl(
      isUpdating: null == isUpdating
          ? _value.isUpdating
          : isUpdating // ignore: cast_nullable_to_non_nullable
              as bool,
      isCurrentStudentLoading: null == isCurrentStudentLoading
          ? _value.isCurrentStudentLoading
          : isCurrentStudentLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentStudent: freezed == currentStudent
          ? _value.currentStudent
          : currentStudent // ignore: cast_nullable_to_non_nullable
              as Student?,
    ));
  }
}

/// @nodoc

class _$UpdateStateImpl implements _UpdateState {
  const _$UpdateStateImpl(
      {this.isUpdating = false,
      this.isCurrentStudentLoading = false,
      this.currentStudent});

  @override
  @JsonKey()
  final bool isUpdating;
  @override
  @JsonKey()
  final bool isCurrentStudentLoading;
  @override
  final Student? currentStudent;

  @override
  String toString() {
    return 'UpdateState(isUpdating: $isUpdating, isCurrentStudentLoading: $isCurrentStudentLoading, currentStudent: $currentStudent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStateImpl &&
            (identical(other.isUpdating, isUpdating) ||
                other.isUpdating == isUpdating) &&
            (identical(
                    other.isCurrentStudentLoading, isCurrentStudentLoading) ||
                other.isCurrentStudentLoading == isCurrentStudentLoading) &&
            (identical(other.currentStudent, currentStudent) ||
                other.currentStudent == currentStudent));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isUpdating, isCurrentStudentLoading, currentStudent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateStateImplCopyWith<_$UpdateStateImpl> get copyWith =>
      __$$UpdateStateImplCopyWithImpl<_$UpdateStateImpl>(this, _$identity);
}

abstract class _UpdateState implements UpdateState {
  const factory _UpdateState(
      {final bool isUpdating,
      final bool isCurrentStudentLoading,
      final Student? currentStudent}) = _$UpdateStateImpl;

  @override
  bool get isUpdating;
  @override
  bool get isCurrentStudentLoading;
  @override
  Student? get currentStudent;
  @override
  @JsonKey(ignore: true)
  _$$UpdateStateImplCopyWith<_$UpdateStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
