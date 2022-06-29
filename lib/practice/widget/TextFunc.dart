// ignore_for_file: avoid_print

import 'package:flutter/cupertino.dart';

class TextFunc extends StatefulWidget {
  const TextFunc(
      {Key? key, required this.text, required this.func, required this.show})
      : super(key: key);

  final String text;
  final Function func;
  final bool show;

  @override
  State<TextFunc> createState() => _TextFuncState();
}

class _TextFuncState extends State<TextFunc> {
  @override
  Widget build(BuildContext context) {
    return widget.show
        ? GestureDetector(
            onTap: () => {widget.func},
            child: Text(widget.text, textDirection: TextDirection.ltr))
        : Container();
  }
}
