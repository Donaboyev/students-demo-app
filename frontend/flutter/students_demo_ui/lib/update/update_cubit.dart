import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../student.dart';

part 'update_cubit.freezed.dart';

part 'update_state.dart';

class UpdateCubit extends Cubit<UpdateState> {
  UpdateCubit() : super(const UpdateState());

  Future<void> updateStudent(
    String name,
    String course, {
    VoidCallback? onSuccess,
  }) async {
    emit(state.copyWith(isUpdating: true));
    try {
      await http.put(
        Uri.http('localhost:8080', '/students'),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode(
          {
            'id': state.currentStudent?.id,
            'name': name,
            'course': course,
          },
        ),
      );
      onSuccess?.call();
    } catch (e) {
      debugPrint('Update current student error: $e');
    }
    emit(state.copyWith(isUpdating: false));
  }

  Future<void> fetchCurrentStudent(
    String? id,
    TextEditingController nameController,
    TextEditingController courseController,
  ) async {
    emit(state.copyWith(isCurrentStudentLoading: true));
    Student? student;
    try {
      final response = await http.get(
        Uri.http('localhost:8080', '/students/$id'),
      );
      student = Student.fromJson(json.decode(response.body));
      nameController.text = '${student.name}';
      courseController.text = '${student.course}';
    } catch (e) {
      debugPrint('Fetching current student error: $e');
    }
    emit(
      state.copyWith(isCurrentStudentLoading: false, currentStudent: student),
    );
  }
}
