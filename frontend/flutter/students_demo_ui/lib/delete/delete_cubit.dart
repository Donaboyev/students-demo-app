import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_cubit.freezed.dart';

part 'delete_state.dart';

class DeleteCubit extends Cubit<DeleteState> {
  DeleteCubit() : super(const DeleteState());

  Future<void> deleteStudent(String? id, {VoidCallback? onSuccess}) async {
    emit(state.copyWith(isLoading: true));
    try {
      await http.delete(Uri.http('localhost:8080', '/students/$id'));
      onSuccess?.call();
    } catch (e) {
      debugPrint('Delete current student error: $e');
    }
    emit(state.copyWith(isLoading: false));
  }
}
