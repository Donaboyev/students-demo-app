// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeleteState {
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeleteStateCopyWith<DeleteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteStateCopyWith<$Res> {
  factory $DeleteStateCopyWith(
          DeleteState value, $Res Function(DeleteState) then) =
      _$DeleteStateCopyWithImpl<$Res, DeleteState>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class _$DeleteStateCopyWithImpl<$Res, $Val extends DeleteState>
    implements $DeleteStateCopyWith<$Res> {
  _$DeleteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteStateImplCopyWith<$Res>
    implements $DeleteStateCopyWith<$Res> {
  factory _$$DeleteStateImplCopyWith(
          _$DeleteStateImpl value, $Res Function(_$DeleteStateImpl) then) =
      __$$DeleteStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$DeleteStateImplCopyWithImpl<$Res>
    extends _$DeleteStateCopyWithImpl<$Res, _$DeleteStateImpl>
    implements _$$DeleteStateImplCopyWith<$Res> {
  __$$DeleteStateImplCopyWithImpl(
      _$DeleteStateImpl _value, $Res Function(_$DeleteStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$DeleteStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DeleteStateImpl implements _DeleteState {
  const _$DeleteStateImpl({this.isLoading = false});

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'DeleteState(isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteStateImplCopyWith<_$DeleteStateImpl> get copyWith =>
      __$$DeleteStateImplCopyWithImpl<_$DeleteStateImpl>(this, _$identity);
}

abstract class _DeleteState implements DeleteState {
  const factory _DeleteState({final bool isLoading}) = _$DeleteStateImpl;

  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$DeleteStateImplCopyWith<_$DeleteStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
