import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../student.dart';
import 'delete_cubit.dart';

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
              padding: const EdgeInsets.symmetric(
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
                      const Expanded(
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
                        icon: const Icon(Icons.close),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Student: ${student.id}',
                        style: const TextStyle(fontSize: 14),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Name: ${student.name}',
                        style: const TextStyle(fontSize: 20),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Course: ${student.course}',
                        style: const TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  const Spacer(),
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
                        ? const CupertinoActivityIndicator()
                        : const Text('Delete'),
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
