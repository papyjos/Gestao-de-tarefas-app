import 'package:flutter/material.dart';
import 'package:primeiroapp/data/task_inherited.dart';
import 'package:primeiroapp/screens/formscreen.dart';
import 'package:primeiroapp/screens/initialscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: TaskInherited(child: const InitialScreen()));
  }
}
