import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_cubit.freezed.dart';

part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(const MainState());

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
        headers: {
          'Content-Type':'application/json'
        },
        body:jsonEncode( {
          'name': name.trim(),
          'course': course.trim(),
        }),
      );
      onSuccess?.call();
    } catch (e) {
      debugPrint('==> Failed $e');
    }
    emit(state.copyWith(isNewStudentCreating: false));
  }
}
