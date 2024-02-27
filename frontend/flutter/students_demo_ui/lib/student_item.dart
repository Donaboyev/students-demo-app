import 'package:flutter/material.dart';

import 'student.dart';

class StudentItem extends StatelessWidget {
  final Student student;
  final VoidCallback onTap;
  final VoidCallback onDelete;

  const StudentItem({
    super.key,
    required this.student,
    required this.onTap,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '${student.name}',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            '${student.course}',
            style: const TextStyle(fontSize: 18),
          ),
          Row(
            children: [
              IconButton(
                onPressed: onTap,
                icon: const Icon(Icons.remove_red_eye),
              ),
              IconButton(
                onPressed: onDelete,
                icon: const Icon(Icons.delete),
              ),
            ],
          )
        ],
      ),
    );
  }
}
