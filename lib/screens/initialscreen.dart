import 'package:flutter/material.dart';
import 'package:primeiroapp/components/Task.dart';
import 'package:primeiroapp/data/task_inherited.dart';
import 'package:primeiroapp/screens/formscreen.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tarefas'),
      ),
      body: Container(
        color: Colors.blueGrey,
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: TaskInherited.of(context).tasklist,
          padding: EdgeInsets.only(top: 8, bottom: 70),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (contextNew) => FormScreen(
                        taskcontext: context,
                      )));
        }),
        child: const Icon(Icons.add),
      ),
    );
  }
}
