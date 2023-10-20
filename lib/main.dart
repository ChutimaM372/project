import 'package:flutter/material.dart';
import 'package:project_final/screen/loginscreen.dart';
import 'package:project_final/screen/pallete.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RIIZE',
      theme: ThemeData(
        scaffoldBackgroundColor: Pallete.backgroundColor,
      ),
      home: const LoginScreen(),
    );
  }
}
