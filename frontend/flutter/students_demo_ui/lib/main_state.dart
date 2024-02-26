part of 'main_cubit.dart';

@freezed
class MainState with _$MainState {
  const factory MainState({
    @Default(false) bool isNewStudentCreating,
  }) = _MainState;
}
