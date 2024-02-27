import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:students_demo_ui/student.dart';
import 'package:students_demo_ui/update/update_cubit.dart';

class UpdateDialog extends StatefulWidget {
  final Student student;
  final VoidCallback onSuccess;

  const UpdateDialog({
    super.key,
    required this.student,
    required this.onSuccess,
  });

  @override
  State<UpdateDialog> createState() => _UpdateDialogState();
}

class _UpdateDialogState extends State<UpdateDialog> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _nameController;
  late TextEditingController _courseController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _courseController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _courseController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => UpdateCubit()
        ..fetchCurrentStudent(
          widget.student.id,
          _nameController,
          _courseController,
        ),
      child: BlocBuilder<UpdateCubit, UpdateState>(
        builder: (context, state) {
          final UpdateCubit cubit = context.read<UpdateCubit>();
          return Dialog(
            child: Container(
              width: 500,
              height: 300,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Student: ${widget.student.id}'),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.close),
                      ),
                    ],
                  ),
                  state.isCurrentStudentLoading
                      ? const CupertinoActivityIndicator()
                      : Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              TextFormField(
                                controller: _nameController,
                                validator: (text) {
                                  if (text == null || text.isEmpty) {
                                    return 'Please enter the field!';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  hintText: 'Name',
                                ),
                              ),
                              TextFormField(
                                validator: (text) {
                                  if (text == null || text.isEmpty) {
                                    return 'Please enter the field!';
                                  }
                                  return null;
                                },
                                controller: _courseController,
                                decoration: InputDecoration(
                                  hintText: 'Course',
                                ),
                              ),
                            ],
                          ),
                        ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        cubit.updateStudent(
                          _nameController.text,
                          _courseController.text,
                          onSuccess: () {
                            Navigator.pop(context);
                            widget.onSuccess.call();
                          },
                        );
                      }
                    },
                    child: state.isUpdating
                        ? CupertinoActivityIndicator()
                        : Text('Update'),
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
