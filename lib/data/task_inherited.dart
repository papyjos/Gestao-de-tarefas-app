import 'package:flutter/material.dart';
import 'package:primeiroapp/components/Task.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  final List<task> tasklist = [
    task('Aprender Flutter', "assets/images/dash.png", 3),
    task('Andar de Bike', "assets/images/bike.webp", 2),
    task('Meditar', "assets/images/meditar.jpeg", 4),
    task('Ler', "assets/images/livro.jpg", 5),
    task("Jogar", "assets/images/jogar.jpg", 1),
  ];
  void newTask(String name, String photo, int difficulty) {
    tasklist.add(task(name, photo, difficulty));
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result =
        context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited old) {
    return old.tasklist.length != tasklist.length;
  }
}
