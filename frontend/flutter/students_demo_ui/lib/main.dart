import 'package:flutter/material.dart';
import 'package:students_demo_ui/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Students Demo',
      home: HomePage(),
    );
  }
}