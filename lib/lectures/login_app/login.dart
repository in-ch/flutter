import 'package:flutter/material.dart';
import 'package:flutter_app/lectures/my_button/MyButton.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text("Sign In"),
          titleTextStyle: const TextStyle(color: Colors.white),
          elevation: 0.2,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyButton(
                  background: MaterialStateProperty.all(Colors.red),
                  image: Image.asset('images/google.png'),
                  text: 'Login with Google',
                  onPressed: () {}),
              MyButton(
                  background: MaterialStateProperty.all(Colors.blue[300]),
                  image: Image.asset('images/facebook.png'),
                  text: 'Login with facebook',
                  onPressed: () {}),
              MyButton(
                  background: MaterialStateProperty.all(Colors.yellow[700]),
                  image: const Icon(
                    Icons.mail,
                    color: Colors.white,
                  ),
                  text: 'Login with email',
                  onPressed: () {}),
            ],
          ),
        ));
  }
}
