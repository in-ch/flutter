import 'package:flutter/material.dart';

class Incheol extends StatefulWidget {
  const Incheol({Key? key, required this.text, required this.func})
      : super(key: key);

  final String text;
  final Function func;

  @override
  State<Incheol> createState() => _IncheolState();
}

class _IncheolState extends State<Incheol> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          widget.func;
        },
        child: Text(widget.text, style: const TextStyle(color: Colors.amber)));
  }
}
