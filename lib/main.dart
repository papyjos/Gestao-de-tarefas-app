import 'package:flutter/material.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tarefas'),
        ),
        body: ListView(
          children: [
            task('Aprender Flutter'),
            task('Andar de Bike'),
            task('Meditar'),
            task('Meditar'),
            task('Meditar'),
            task('Meditar'),
            task('Meditar'),
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: (() {})),
      ),
    );
  }
}

class task extends StatelessWidget {
  final String nome;
  const task(this.nome, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: [
            Container(
              color: Colors.blue,
              height: 140,
            ),
            Container(
              color: Colors.white,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: Colors.grey,
                    width: 72,
                  ),
                  Text(nome),
                  ElevatedButton(
                      onPressed: () {}, child: Icon(Icons.arrow_drop_up))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
