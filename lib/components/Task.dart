// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:primeiroapp/components/Difficulty.dart';
import 'package:primeiroapp/components/levelchange.dart';

class task extends StatefulWidget {
  final String nome;
  final String foto;
  final int dificuldade;
  task(this.nome, this.foto, this.dificuldade, {super.key});

  @override
  State<task> createState() => _taskState();
}

class _taskState extends State<task> {
  int nivel = 0;
  int mudarcor = 0;

  bool assetornetwork() {
    if (widget.foto.contains("http")) {
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          changecolor(mudarcor, widget.dificuldade),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey),
                      width: 72,
                      height: 100,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: assetornetwork()
                              ? Image.asset(
                                  widget.foto,
                                  fit: BoxFit.cover,
                                )
                              : Image.network(
                                  widget.foto,
                                  fit: BoxFit.cover,
                                )),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 200,
                          child: Text(
                            widget.nome,
                            style: const TextStyle(fontSize: 24),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Difficulty(
                          difficultylevel: widget.dificuldade,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 52,
                        height: 52,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (nivel < (widget.dificuldade * 10)) {
                                  nivel++;
                                  nivel / widget.dificuldade * 0.1;
                                } else {
                                  nivel = 0;
                                  mudarcor++;
                                }
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Icon(Icons.arrow_drop_up),
                                const Text(
                                  "Up",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            )),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: SizedBox(
                      width: 200,
                      child: LinearProgressIndicator(
                        color: Colors.white,
                        value: (widget.dificuldade >= 0)
                            ? nivel / widget.dificuldade * 0.1
                            : 1,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "Nivel:$nivel",
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Text(
                        "Maestria:$mudarcor",
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
