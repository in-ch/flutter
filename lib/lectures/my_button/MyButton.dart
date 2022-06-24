// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton(
      {required this.image,
      required this.text,
      required this.onPressed,
      required this.background});

  final Widget image;
  final String text;
  final VoidCallback onPressed;
  final MaterialStateProperty<Color?> background;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 50.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(4.0),
        ),
      ),
      child: ElevatedButton(
        style: ButtonStyle(backgroundColor: background),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            image,
            Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 15.0),
            ),
            const Opacity(
              opacity: 0.0,
              child: Icon(
                Icons.mail,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
