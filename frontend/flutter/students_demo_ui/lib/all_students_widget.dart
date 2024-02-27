import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:students_demo_ui/delete/delete_dialog.dart';
import 'package:students_demo_ui/update/update_dialog.dart';

import 'main_cubit.dart';
import 'student_item.dart';

class AllStudentsWidget extends StatefulWidget {
  const AllStudentsWidget({super.key});

  @override
  State<AllStudentsWidget> createState() => _AllStudentsWidgetState();
}

class _AllStudentsWidgetState extends State<AllStudentsWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainCubit, MainState>(
      builder: (context, state) {
        final MainCubit cubit = context.read<MainCubit>();
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 40),
            Row(
              children: [
                const Text(
                  'All students',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                state.isAllStudentsLoading
                    ? const CupertinoActivityIndicator()
                    : const SizedBox.shrink()
              ],
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 24),
                itemCount: state.students.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return StudentItem(
                    student: state.students[index],
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return UpdateDialog(
                            student: state.students[index],
                            onSuccess: () {
                              cubit.fetchAllStudents();
                            },
                          );
                        },
                      );
                    },
                    onDelete: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return DeleteDialog(
                            student: state.students[index],
                            onSuccess: () {
                              cubit.fetchAllStudents();
                            },
                          );
                        },
                      );
                    },
                  );
                },
              ),
            )
          ],
        );
      },
    );
  }
}
