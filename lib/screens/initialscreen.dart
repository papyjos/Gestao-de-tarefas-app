import 'package:flutter/material.dart';
import 'package:primeiroapp/components/Task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tarefas'),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: const Duration(milliseconds: 1000),
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const task('Aprender Flutter', "assets/images/dash.png", 3),
            const task('Andar de Bike', "assets/images/bike.webp", 2),
            const task('Meditar', "assets/images/meditar.jpeg", 4),
            const task('Ler', "assets/images/livro.jpg", 5),
            const task("Jogar", "assets/images/jogar.jpg", 1),
            const SizedBox(
              height: 80,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          setState(() {
            opacidade = !opacidade;
          });
        }),
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
