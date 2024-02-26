import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:students_demo_ui/add_new_student_widget.dart';
import 'package:students_demo_ui/main_cubit.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocProvider<MainCubit>(
        create: (_) => MainCubit(),
        child: Row(
          children: [
            Expanded(child: AddNewStudentWidget()),
          ],
        ),
      ),
    );
  }
}
