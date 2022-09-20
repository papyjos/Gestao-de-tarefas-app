// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class changecolor extends StatefulWidget {
  final int mudarcor;
  final int dificuldade;
  const changecolor(this.mudarcor, this.dificuldade, {super.key});

  @override
  State<changecolor> createState() => _changecolorState();
}

class _changecolorState extends State<changecolor> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: (widget.dificuldade >= widget.mudarcor)
                  ? (widget.mudarcor >= 0)
                      ? Colors.blue
                      : const Color.fromARGB(0, 255, 255, 255)
                  : const Color.fromARGB(0, 255, 255, 255)),
          height: 140,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: (widget.dificuldade >= widget.mudarcor)
                  ? (widget.mudarcor >= 1)
                      ? Colors.green
                      : const Color.fromARGB(0, 255, 255, 255)
                  : const Color.fromARGB(0, 255, 255, 255)),
          height: 140,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: (widget.dificuldade >= widget.mudarcor)
                  ? (widget.mudarcor >= 2)
                      ? Colors.purple
                      : const Color.fromARGB(0, 255, 255, 255)
                  : const Color.fromARGB(0, 255, 255, 255)),
          height: 140,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: (widget.dificuldade >= widget.mudarcor)
                  ? (widget.mudarcor >= 3)
                      ? Colors.red
                      : const Color.fromARGB(0, 255, 255, 255)
                  : Colors.red),
          height: 140,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: ((widget.dificuldade - 1) <= widget.mudarcor)
                  ? (widget.mudarcor > 3)
                      ? Colors.black
                      : const Color.fromARGB(0, 255, 255, 255)
                  : const Color.fromARGB(0, 255, 255, 255)),
          height: 140,
        ),
      ],
    );
  }
}
