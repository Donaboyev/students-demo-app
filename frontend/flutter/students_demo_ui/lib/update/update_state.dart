part of 'update_cubit.dart';

@freezed
class UpdateState with _$UpdateState {
  const factory UpdateState({
    @Default(false) bool isUpdating,
    @Default(false) bool isCurrentStudentLoading,
    Student? currentStudent,
  }) = _UpdateState;
}
