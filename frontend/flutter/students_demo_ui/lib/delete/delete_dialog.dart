import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:students_demo_ui/delete/delete_cubit.dart';
import 'package:students_demo_ui/student.dart';

class DeleteDialog extends StatelessWidget {
  final Student student;
  final VoidCallback onSuccess;

  const DeleteDialog({
    super.key,
    required this.student,
    required this.onSuccess,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DeleteCubit(),
      child: BlocBuilder<DeleteCubit, DeleteState>(
        builder: (context, state) {
          final DeleteCubit cubit = context.read<DeleteCubit>();
          return Dialog(
            child: Container(
              width: 500,
              height: 400,
              padding: EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 16,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Are you sure to delete this student?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 36,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.close),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Student: ${student.id}',
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Name: ${student.name}',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Course: ${student.course}',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      cubit.deleteStudent(
                        student.id,
                        onSuccess: () {
                          Navigator.pop(context);
                          onSuccess.call();
                        },
                      );
                    },
                    child: state.isLoading
                        ? CupertinoActivityIndicator()
                        : Text('Delete'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
