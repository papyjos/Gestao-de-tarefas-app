import 'package:flutter/material.dart';

class Difficulty extends StatefulWidget {
  final int difficultylevel;

  const Difficulty({
    required this.difficultylevel,
    Key? key,
  }) : super(key: key);

  @override
  State<Difficulty> createState() => _DifficultyState();
}

class _DifficultyState extends State<Difficulty> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star_rate,
          size: 15,
          color: (widget.difficultylevel >= 1) ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.star_rate,
          size: 15,
          color: (widget.difficultylevel >= 2) ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.star_rate,
          size: 15,
          color: (widget.difficultylevel >= 3) ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.star_rate,
          size: 15,
          color: (widget.difficultylevel >= 4) ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.star_rate,
          size: 15,
          color: (widget.difficultylevel >= 5) ? Colors.blue : Colors.blue[100],
        ),
      ],
    );
  }
}
