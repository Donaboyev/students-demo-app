import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:freezed_annotation/freezed_annotation.dart';

import 'student.dart';

part 'main_cubit.freezed.dart';

part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(const MainState());

  // Future<void> fetchCurrentStudent(String? id) async {
  //   emit(state.copyWith(isCurrentStudentLoading: true));
  //   Student? student;
  //   try {
  //     final response = await http.get(
  //       Uri.http('localhost:8080', '/students/$id'),
  //     );
  //     student = Student.fromJson(json.decode(response.body));
  //   } catch (e) {
  //     debugPrint('Fetching current student error: $e');
  //   }
  //   emit(
  //     state.copyWith(isCurrentStudentLoading: false, currentStudent: student),
  //   );
  // }

  Future<void> fetchAllStudents() async {
    emit(state.copyWith(isAllStudentsLoading: true));
    List<Student> students = [];
    try {
      final response = await http.get(
        Uri.http('localhost:8080', '/students'),
      );
      final List<dynamic> jsonList = json.decode(response.body);
      students = jsonList.map((e) => Student.fromJson(e)).toList();
    } catch (e) {
      debugPrint('Fetching all students error: $e');
    }
    emit(state.copyWith(isAllStudentsLoading: false, students: students));
  }

  Future<void> saveNewUser(
    String name,
    String course, {
    VoidCallback? onSuccess,
    VoidCallback? onFail,
  }) async {
    emit(state.copyWith(isNewStudentCreating: true));
    try {
      await http.post(
        Uri.http('localhost:8080', '/students'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'name': name.trim(),
          'course': course.trim(),
        }),
      );
      onSuccess?.call();
      fetchAllStudents();
    } catch (e) {
      debugPrint('==> Failed $e');
    }
    emit(state.copyWith(isNewStudentCreating: false));
  }
}
