import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
                    onTap: () {},
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
