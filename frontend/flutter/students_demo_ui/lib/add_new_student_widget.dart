import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:students_demo_ui/main_cubit.dart';

class AddNewStudentWidget extends StatefulWidget {
  const AddNewStudentWidget({super.key});

  @override
  State<AddNewStudentWidget> createState() => _AddNewStudentWidgetState();
}

class _AddNewStudentWidgetState extends State<AddNewStudentWidget> {
  late TextEditingController _nameController;
  late TextEditingController _courseController;
  final _formKey = GlobalKey<FormState>();

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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'New student',
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 40),
        Container(
          constraints: BoxConstraints(maxWidth: 200),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.number,
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
                  keyboardType: TextInputType.number,
                  controller: _courseController,
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Please enter the field!';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: 'Course',
                  ),
                ),
                SizedBox(height: 40),
                BlocBuilder<MainCubit, MainState>(
                  builder: (context, state) {
                    final MainCubit cubit = context.read<MainCubit>();
                    return ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          cubit.saveNewUser(
                              _nameController.text, _courseController.text,
                              onSuccess: () {
                            _nameController.clear();
                            _courseController.clear();
                          });
                        }
                      },
                      child: state.isNewStudentCreating
                          ? const CupertinoActivityIndicator()
                          : const Text('Add'),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
