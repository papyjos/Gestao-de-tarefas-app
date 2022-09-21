import 'package:flutter/material.dart';

class formscreen extends StatefulWidget {
  const formscreen({super.key});

  @override
  State<formscreen> createState() => _formscreenState();
}

class _formscreenState extends State<formscreen> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController difficultycontroller = TextEditingController();
  TextEditingController imagecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nova tarefa"),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black12,
              border: Border.all(width: 3)),
          height: 650,
          width: 375,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                      controller: namecontroller,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Nome",
                        fillColor: Colors.white,
                        filled: true,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                      controller: difficultycontroller,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Dificuldade",
                        fillColor: Colors.white,
                        filled: true,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                      onChanged: (Text) {
                        setState(() {});
                      },
                      controller: imagecontroller,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Imagem",
                        fillColor: Colors.white,
                        filled: true,
                      )),
                ),
                Container(
                  height: 100,
                  width: 72,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue,
                      border: Border.all(width: 2)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      imagecontroller.text,
                      errorBuilder: (BuildContext context, Object exception,
                          StackTrace? stackTrace) {
                        return Container(
                          child: Image.asset(
                            "assets/images/nophoto.jpg",
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: (() {
                      print(namecontroller.text);
                    }),
                    child: Text("Adicionar"))
              ]),
        ),
      ),
    );
  }
}
